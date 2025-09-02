package com.skills.java;

import java.util.Scanner;

/**
 * A program that demonstrates user input and basic calculations in Java.
 * This program shows the input-process-output pattern commonly used in programming.
 */
public class UserInputProgram {
    
    /**
     * The main method - demonstrates user input, processing, and output.
     * Shows how to use Scanner class for reading user input.
     */
    public static void main(String[] args) {
        
        // Create a Scanner object to read user input from the console
        Scanner scanner = new Scanner(System.in);
        
        // This program will ask for user's name and age, then calculate birth year
        
        // Print a message asking the user to enter their name
        System.out.print("Please enter your name: ");
        
        // Read the user's name input using scanner.nextLine()
        // Store it in a String variable called 'name'
        String name = scanner.nextLine();
        
        // Print a message asking the user to enter their age
        System.out.print("Please enter your age: ");
        
        // Read the user's age input using scanner.nextInt()
        // Store it in an int variable called 'age'
        int age = scanner.nextInt();
        
        // Calculate the year the user was born (assuming current year is 2024)
        // Store it in an int variable called 'birthYear'
        int currentYear = 2024;
        int birthYear = currentYear - age;
        
        // Print a personalized message using the user's input
        // Format: "Hello [name]! You are [age] years old and were born in [birthYear]."
        System.out.println("Hello " + name + "! You are " + age + " years old and were born in " + birthYear + ".");
        
        /* 
         * The input-process-output pattern is fundamental in programming:
         * 1. INPUT: Get data from user or external source
         * 2. PROCESS: Perform calculations or operations on the data
         * 3. OUTPUT: Display results or store them for later use
         */
        
        // Close the Scanner object to prevent resource leaks
        scanner.close();
    }
} 