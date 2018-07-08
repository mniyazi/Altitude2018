package com.example.workday.MilestoneService.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class EmailDetail {
    private String name;
    private String replyTo;
    private String subject;
    private String body;

    public EmailDetail(String fromName, String replyToEmail, String subject, String body) {
        this.name = fromName;
        this.replyTo = replyToEmail;
        this.subject = subject;
        this.body = body;
    }

    public String getName() {
        return name;
    }

    public String getReplyTo() {
        return replyTo;
    }

    public String getSubject() {
        return subject;
    }

    public String getBody() {
        return body;
    }
}
