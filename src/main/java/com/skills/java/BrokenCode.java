package com.skills.java;

import java.util.Scanner;

/**
 * A corrected version of the broken code exercise.
 * This program demonstrates proper Java syntax and structure.
 * Learners should identify and fix all the errors in the original version.
 */
public class BrokenCode {
    
    /**
     * The main method - demonstrates basic input/output operations.
     * Shows proper Java syntax including semicolons, method modifiers, and structure.
     */
    public static void main(String[] args) {
        
        // Print welcome message
        System.out.println("Welcome to the corrected code exercise!");
        
        // Create Scanner object for user input
        Scanner scanner = new Scanner(System.in);
        
        // Ask user for input
        System.out.print("Enter a number: ");
        
        // Read user input
        int number = scanner.nextInt();
        
        // Perform calculation
        int result = number * 2;
        
        // Display result
        System.out.println("Double of " + number + " is " + result);
        
        // Close scanner
        scanner.close();
    }
} 