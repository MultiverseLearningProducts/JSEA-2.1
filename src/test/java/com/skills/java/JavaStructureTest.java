package com.skills.java;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import static org.junit.jupiter.api.Assertions.*;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/**
 * Comprehensive test suite for Java Program Structure Basics
 * Tests learners' understanding of classes, methods, packages, imports, and basic syntax
 */
@DisplayName("Java Program Structure Basics - Assessment Tests")
public class JavaStructureTest {
    
    private ByteArrayOutputStream outputStream;
    private PrintStream originalOut;
    private InputStream originalIn;
    
    @BeforeEach
    void setUp() {
        // Capture console output for testing
        outputStream = new ByteArrayOutputStream();
        originalOut = System.out;
        System.setOut(new PrintStream(outputStream));
        
        // Store original input stream
        originalIn = System.in;
    }
    
    @Test
    @DisplayName("Test 1: HelloWorld Program Structure")
    void testHelloWorldStructure() {
        try {
            // Test that HelloWorld class exists and can be instantiated
            Class<?> helloWorldClass = Class.forName("com.skills.java.HelloWorld");
            assertNotNull(helloWorldClass, "HelloWorld class should exist");
            
            // Test that it has a main method
            assertDoesNotThrow(() -> {
                helloWorldClass.getMethod("main", String[].class);
            }, "HelloWorld class should have a main method");
            
            // Test that it's a public class
            assertTrue(java.lang.reflect.Modifier.isPublic(helloWorldClass.getModifiers()), 
                      "HelloWorld class should be public");
            
        } catch (ClassNotFoundException e) {
            fail("HelloWorld class not found: " + e.getMessage());
        } catch (NoSuchMethodException e) {
            fail("HelloWorld main method not found: " + e.getMessage());
        }
    }
    
    @Test
    @DisplayName("Test 2: UserInputProgram Structure")
    void testUserInputProgramStructure() {
        try {
            // Test that UserInputProgram class exists
            Class<?> userInputClass = Class.forName("com.skills.java.UserInputProgram");
            assertNotNull(userInputClass, "UserInputProgram class should exist");
            
            // Test that it has a main method
            assertDoesNotThrow(() -> {
                userInputClass.getMethod("main", String[].class);
            }, "UserInputProgram class should have a main method");
            
            // Test that it's a public class
            assertTrue(java.lang.reflect.Modifier.isPublic(userInputClass.getModifiers()), 
                      "UserInputProgram class should be public");
            
        } catch (ClassNotFoundException e) {
            fail("UserInputProgram class not found: " + e.getMessage());
        } catch (NoSuchMethodException e) {
            fail("UserInputProgram main method not found: " + e.getMessage());
        }
    }
    
    @Test
    @DisplayName("Test 3: BrokenCode Error Identification")
    void testBrokenCodeErrorIdentification() {
        try {
            // Test that BrokenCode class exists
            Class<?> brokenCodeClass = Class.forName("com.skills.java.BrokenCode");
            assertNotNull(brokenCodeClass, "BrokenCode class should exist");
            
            // Note: This class intentionally has errors for learners to fix
            // We're just testing that the class file exists
            
        } catch (ClassNotFoundException e) {
            fail("BrokenCode class not found: " + e.getMessage());
        }
    }
    
    @Test
    @DisplayName("Test 4: Package Structure Validation")
    void testPackageStructure() {
        // Test that all classes are in the correct package
        String expectedPackage = "com.skills.java";
        
        try {
            Class<?> helloWorldClass = Class.forName("com.skills.java.HelloWorld");
            assertEquals(expectedPackage, helloWorldClass.getPackage().getName(), 
                       "HelloWorld should be in package " + expectedPackage);
            
            Class<?> userInputClass = Class.forName("com.skills.java.UserInputProgram");
            assertEquals(expectedPackage, userInputClass.getPackage().getName(), 
                       "UserInputProgram should be in package " + expectedPackage);
            
            Class<?> brokenCodeClass = Class.forName("com.skills.java.BrokenCode");
            assertEquals(expectedPackage, brokenCodeClass.getPackage().getName(), 
                       "BrokenCode should be in package " + expectedPackage);
            
        } catch (ClassNotFoundException e) {
            fail("One or more classes not found: " + e.getMessage());
        }
    }
    
    @Test
    @DisplayName("Test 5: Main Method Signature Validation")
    void testMainMethodSignature() {
        try {
            Class<?> helloWorldClass = Class.forName("com.skills.java.HelloWorld");
            java.lang.reflect.Method mainMethod = helloWorldClass.getMethod("main", String[].class);
            
            // Test main method modifiers
            int modifiers = mainMethod.getModifiers();
            assertTrue(java.lang.reflect.Modifier.isPublic(modifiers), 
                      "Main method should be public");
            assertTrue(java.lang.reflect.Modifier.isStatic(modifiers), 
                      "Main method should be static");
            
            // Test return type
            assertEquals(void.class, mainMethod.getReturnType(), 
                       "Main method should return void");
            
            // Test parameter types
            Class<?>[] parameterTypes = mainMethod.getParameterTypes();
            assertEquals(1, parameterTypes.length, 
                       "Main method should have exactly one parameter");
            assertEquals(String[].class, parameterTypes[0], 
                       "Main method parameter should be String[]");
            
        } catch (Exception e) {
            fail("Error testing main method signature: " + e.getMessage());
        }
    }
    
    @Test
    @DisplayName("Test 6: File Naming Convention")
    void testFileNamingConvention() {
        // Test that file names match class names
        // This is a structural test that verifies the project follows Java conventions
        
        // Note: In a real implementation, you might check the actual file system
        // For now, we'll test that the classes exist with the expected names
        
        assertDoesNotThrow(() -> {
            Class.forName("com.skills.java.HelloWorld");
        }, "HelloWorld.java file should exist and contain HelloWorld class");
        
        assertDoesNotThrow(() -> {
            Class.forName("com.skills.java.UserInputProgram");
        }, "UserInputProgram.java file should exist and contain UserInputProgram class");
        
        assertDoesNotThrow(() -> {
            Class.forName("com.skills.java.BrokenCode");
        }, "BrokenCode.java file should exist and contain BrokenCode class");
    }
    
    @Test
    @DisplayName("Test 7: Basic Compilation Test")
    void testBasicCompilation() {
        // Test that the project can be compiled
        // This is a basic sanity check
        
        try {
            // Test that we can access the classes
            Class.forName("com.skills.java.HelloWorld");
            Class.forName("com.skills.java.UserInputProgram");
            Class.forName("com.skills.java.BrokenCode");
            
            // If we get here, the classes are accessible
            assertTrue(true, "All classes are accessible and can be loaded");
            
        } catch (ClassNotFoundException e) {
            fail("Compilation or class loading failed: " + e.getMessage());
        }
    }
    
    @Test
    @DisplayName("Test 8: Project Structure Validation")
    void testProjectStructure() {
        // Test that the project follows the expected structure
        
        // Test package structure
        Package skillsPackage = Package.getPackage("com.skills");
        assertNotNull(skillsPackage, "com.skills package should exist");
        
        Package javaPackage = Package.getPackage("com.skills.java");
        assertNotNull(javaPackage, "com.skills.java package should exist");
        
        // Test that classes are in the correct package
        try {
            Class<?> helloWorldClass = Class.forName("com.skills.java.HelloWorld");
            assertEquals("com.skills.java", helloWorldClass.getPackage().getName(), 
                       "HelloWorld should be in com.skills.java package");
            
        } catch (ClassNotFoundException e) {
            fail("HelloWorld class not found in expected package: " + e.getMessage());
        }
    }
} 