package com.workday.workdog;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.workday.wcp.fs.request.Request;
import com.workday.wcp.fs.request.RequestHandler;
import com.workday.wcp.fs.request.Response;
import com.workday.workdog.model.ExternalBreedResponse;
import com.workday.workdog.model.HttpResponse;
import com.workday.workdog.model.PrettyBreed;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ExternalBreedHandler implements RequestHandler {
    //no constructor needed

    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    static {
        OBJECT_MAPPER.enable(SerializationFeature.INDENT_OUTPUT);
        OBJECT_MAPPER.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        OBJECT_MAPPER.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
    }

    @Override
    public Response invoke(final Request request) {

        /**
         * This function retrieves and transforms an externally hosted list of dog breeds and formats them to better interact with
         * the Presentation Services
         *
         * The URL to access this api would be formatted as https://api.workday.com/functions/v1alpha/exec/{insert function id here}/externalBreeds
         *
         */

        final HttpGet getBreeds = new HttpGet("https://dog.ceo/api/breeds/list/all");
        HttpResponse response = executeHttpRequest(getBreeds);
        ExternalBreedResponse dogs = readObject(response.getBody(), ExternalBreedResponse.class);
        List<PrettyBreed> output = new ArrayList<>();
        for (Map.Entry<String, List<String>> e : dogs.getMessage().entrySet()) {
            e.getKey(); //breed
            output.add(new PrettyBreed(e.getKey(), null));
            for (String subbreed : e.getValue()) {
                output.add(new PrettyBreed(e.getKey(), subbreed));
            }
        }
        try {
            return new Response(OBJECT_MAPPER.writeValueAsString(output));
        } catch (final JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    private static HttpResponse executeHttpRequest(final HttpRequestBase request) {
        try (final CloseableHttpClient client = HttpClients.createDefault()) {
            final CloseableHttpResponse response = client.execute(request);
            final HttpResponse workdayResponse = new HttpResponse(response.getStatusLine().getStatusCode(), EntityUtils.toString(response.getEntity()), headerMap(response.headerIterator()));
            if (workdayResponse.getStatus() >= HttpStatus.SC_BAD_REQUEST) {
                throw new RuntimeException("Error connecting to url: " + request.getURI());
            }
            return workdayResponse;
        } catch (final IOException e) {
            throw new RuntimeException("Error making request: ", e);
        }
    }

    private static Map<String, String> headerMap(final HeaderIterator headers) {
        final Map<String, String> out = new HashMap<>();
        while (headers.hasNext()) {
            final Header header = headers.nextHeader();
            out.put(header.getName(), header.getValue());
        }
        return out;
    }

    private static <T> T readObject(String jsonBody, Class<T> objectClass) {
        try {
            return OBJECT_MAPPER.readValue(jsonBody, objectClass);
        } catch (JsonProcessingException e) {
            throw new RuntimeException("Could not read string as object", e);
        } catch (IOException e) {
            throw new RuntimeException("Could not read string as object", e);
        }
    }
}
