package com.mycompany.app;

/**
 * Hello world from Jenkins!
 */
public class App
{

    private final String message = "Hello World from Jenkins!";

    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().getMessage());
    }

    private final String getMessage() {
        return message;
    }

}
