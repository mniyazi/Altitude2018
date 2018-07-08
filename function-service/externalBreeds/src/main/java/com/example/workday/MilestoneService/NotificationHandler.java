package com.example.workday.MilestoneService;

import com.example.workday.MilestoneService.model.Reward;
import com.example.workday.MilestoneService.model.RewardNotification;
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
import com.workday.workdog.model.Worker;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NotificationHandler implements RequestHandler {
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
        try {
            String token = request.getTenantContext().getAuthToken();
            Reward reward = readObject(request.getBody(),Reward.class);

            HttpPost postRequest = new HttpPost("https://api.workday.com/connect/v1Alpha/sendMessage");
            postRequest.setHeader("Authorization", token);

            RewardNotification notification = new RewardNotification("Anniversary Reward Available", getNotificationBody(reward, token), reward.getAwardTo().getId());
            StringEntity input = new StringEntity(OBJECT_MAPPER.writeValueAsString(notification));
            input.setContentType("application/json");
            postRequest.setEntity(input);

            HttpResponse response = executeHttpRequest(postRequest);

            return new Response(OBJECT_MAPPER.writeValueAsString(response.getBody()));
        } catch(Exception e) {
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

    private String getNotificationBody(Reward reward, String token) {

        StringBuilder builder = new StringBuilder();
        builder.append("Hi ").append(reward.getAwardTo().getDescriptor()).append(",").append("<BR/>").append("<BR/>");
        builder.append("Happy anniversary! Thank you for the all of the contributions you have made in making our company successful.").append("<BR/>");
        builder.append("Here please find your reward ").append(reward.getOfType().getDescriptor().toLowerCase())
                .append(": ").append(reward.getCode()).append("<BR/>").append("<BR/>");
        builder.append("Regards,").append("<BR/>");
        builder.append("Workday Employee Reward Program");

        return builder.toString();
    }
}
