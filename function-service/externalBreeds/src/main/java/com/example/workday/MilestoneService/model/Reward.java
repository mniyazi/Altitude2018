package com.example.workday.MilestoneService.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Reward {
    private String code;
    private AwardTo awardTo;

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

    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class AwardTo {
        private String id ;

        public String getId() {
            return id;
        }

        public void setId(String id) {
            this.id = id;
        }
    }
}
