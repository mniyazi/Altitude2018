package com.workday.workdog.model;

public class PrettyBreed {

    private String displayName;
    private String key;

    public PrettyBreed(String breed, String optionalSubbreed) {
        String subbreed =  (optionalSubbreed==null ? "" : optionalSubbreed);
        String subbreedCap;
        if(optionalSubbreed == null){
            subbreedCap = subbreed;
        }else{
            subbreedCap = subbreed.substring(0, 1).toUpperCase() + subbreed.substring(1).toLowerCase();
        }
        String breedCap = breed.substring(0, 1).toUpperCase() + breed.substring(1).toLowerCase();

        displayName = subbreedCap + (optionalSubbreed==null?"":" ") + breedCap;
        key = (optionalSubbreed == null ? breed : breed + "/" + subbreed);
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
}
