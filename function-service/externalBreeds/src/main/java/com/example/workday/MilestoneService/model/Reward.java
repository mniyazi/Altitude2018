package com.example.workday.MilestoneService.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Reward {
    private String code;
    private AwardTo awardTo;
    private OfType ofType;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public AwardTo getAwardTo() {
        return awardTo;
    }

    public void setAwardTo(AwardTo awardTo) {
        this.awardTo = awardTo;
    }

    public OfType getOfType() {
        return ofType;
    }

    public void setOfType(OfType ofType) {
        this.ofType = ofType;
    }

    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class AwardTo {
        private String id ;
        private String descriptor;

        public String getId() {
            return id;
        }

        public void setId(String id) {
            this.id = id;
        }

        public String getDescriptor() {
            return descriptor;
        }

        public void setDescriptor(String descriptor) {
            this.descriptor = descriptor;
        }
    }

    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class OfType {
        private String id ;
        private String descriptor;

        public String getId() {
            return id;
        }

        public void setId(String id) {
            this.id = id;
        }

        public String getDescriptor() {
            return descriptor;
        }

        public void setDescriptor(String descriptor) {
            this.descriptor = descriptor;
        }
    }
}
