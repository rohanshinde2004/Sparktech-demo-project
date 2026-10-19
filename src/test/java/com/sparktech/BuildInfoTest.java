package com.sparktech;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

public class BuildInfoTest {

    @Test
    public void projectNameIsCorrect() {
        assertEquals("Sparktech Demo", BuildInfo.projectName());
    }

    @Test
    public void greetingUsesName() {
        assertEquals("Hello, Rohan!", BuildInfo.greeting("  Rohan "));
    }

    @Test
    public void greetingHandlesEmptyName() {
        assertEquals("Hello, guest!", BuildInfo.greeting(""));
        assertEquals("Hello, guest!", BuildInfo.greeting(null));
    }
}
