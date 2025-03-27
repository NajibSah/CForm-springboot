package com.example.contactform.model;

public class ContactForm {
    private String name;
    private String email;
    private String password;
    private String message;
    private boolean subscribe;
    private String country;
    private String extra;

    // Getters and setters

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }

    public boolean isSubscribe() { return subscribe; }
    public void setSubscribe(boolean subscribe) { this.subscribe = subscribe; }

    public String getCountry() { return country; }
    public void setCountry(String country) { this.country = country; }

    public String getExtra() { return extra; }
    public void setExtra(String extra) { this.extra = extra; }
}
