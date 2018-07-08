package com.example.workday.MilestoneService.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.ArrayList;
import java.util.List;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Recipient {

    private List<Contact> contacts ;

    public Recipient(String id) {
        this.contacts = new ArrayList<Contact>();
        this.contacts.add(new Contact(id));
    }

    public List<Contact> getContacts() {
        return contacts;
    }

    public static class Contact {
        private String id ;

        public Contact(String id) {
            this.id= id;
        }

        public String getId() {
            return id;
        }
    }
}
