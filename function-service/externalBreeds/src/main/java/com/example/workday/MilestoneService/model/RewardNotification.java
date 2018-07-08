package com.example.workday.MilestoneService.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.util.List;
import java.util.ArrayList;

@JsonIgnoreProperties(ignoreUnknown = true)
public class RewardNotification {
    private NotificationType notificationType;
    private EmailDetail emailDetail;
    private Recipient recipients;

    public RewardNotification(String subject, String body, String recipientId) {
        this.notificationType = new NotificationType();
        this.emailDetail = new EmailDetail("Anniversary Reward","reward@workday.net",subject,body);
        this.recipients = new Recipient(recipientId);
    }

    public NotificationType getNotificationType() {
        return notificationType;
    }

    public EmailDetail getEmailDetail() {
        return emailDetail;
    }

    public Recipient getRecipients() {
        return recipients;
    }
}
