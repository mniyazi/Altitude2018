package com.workday.workdog.model;

import java.util.Map;

public class HttpResponse {

    private final int status;
    private final String body;
    private final Map<String,String> headers;
    public HttpResponse(final int status, final String body, final Map<String,String> headers) {
        this.status = status;
        this.body = body;
        this.headers = headers;
    }

    public int getStatus() {
        return this.status;
    }

    public String getBody() {
        return this.body;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    @Override
    public String toString() {
        return "HttpResponse{" +
                "status=" + status +
                ", body='" + body + '\'' +
                ", headers=" + headers +
                '}';
    }
}
