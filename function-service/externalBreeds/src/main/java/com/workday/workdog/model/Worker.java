package com.workday.workdog.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
public class Worker extends WorkdayObject {

    private String businessTitle;
    private boolean isManager;
    private SupervisoryOrganization primarySupervisoryOrganization;

    public Worker() {
    }

    public Worker(String id){

    }

    public String getBusinessTitle() {
        return this.businessTitle;
    }

    public void setBusinessTitle(String businessTitle) {
        this.businessTitle = businessTitle;
    }

    public boolean isManager() {
        return this.isManager;
    }

    public void setManager(boolean manager) {
        this.isManager = manager;
    }

    public SupervisoryOrganization getPrimarySupervisoryOrganization() {
        return this.primarySupervisoryOrganization;
    }

    public void setPrimarySupervisoryOrganization(SupervisoryOrganization primarySupervisoryOrganization) {
        this.primarySupervisoryOrganization = primarySupervisoryOrganization;
    }
}
