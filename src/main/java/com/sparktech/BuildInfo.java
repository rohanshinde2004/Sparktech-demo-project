package com.sparktech;

/** Small helper class so that "mvn test" has real code to compile and test. */
public class BuildInfo {

    public static String projectName() {
        return "Sparktech Demo";
    }

    public static String greeting(String name) {
        if (name == null || name.trim().isEmpty()) {
            return "Hello, guest!";
        }
        return "Hello, " + name.trim() + "!";
    }
}
