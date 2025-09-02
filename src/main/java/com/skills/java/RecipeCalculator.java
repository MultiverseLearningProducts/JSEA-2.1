package com.skills.java;

import java.util.Scanner;

/**
 * Recipe Calculator - A comprehensive example demonstrating Java program structure.
 * This program shows all the key concepts: packages, imports, classes, main method,
 * variables, input/output, calculations, and proper commenting.
 * 
 * @author Skills Application
 * @version 1.0
 */
public class RecipeCalculator {
    
    /**
     * The main method - demonstrates a complete Java program structure.
     * Shows the input-process-output pattern with practical application.
     */
    public static void main(String[] args) {
        
        // Create Scanner object for user input
        Scanner scanner = new Scanner(System.in);
        
        // Display program purpose
        System.out.println("=== Recipe Calculator ===");
        System.out.println("Calculate cooking time and temperature adjustments");
        System.out.println();
        
        // Get recipe details from user
        System.out.print("Enter the original cooking temperature (in Fahrenheit): ");
        int originalTemp = scanner.nextInt();
        
        System.out.print("Enter the original cooking time (in minutes): ");
        int originalTime = scanner.nextInt();
        
        System.out.print("Enter the number of servings you want to make: ");
        int servings = scanner.nextInt();
        
        // Process the data (perform calculations)
        int adjustedTemp = originalTemp + 25; // Increase temperature for larger batches
        double adjustedTime = originalTime * Math.sqrt(servings / 4.0); // Adjust time based on servings
        
        // Output results
        System.out.println();
        System.out.println("=== Adjusted Recipe ===");
        System.out.println("Original Temperature: " + originalTemp + "°F");
        System.out.println("Adjusted Temperature: " + adjustedTemp + "°F");
        System.out.println("Original Time: " + originalTime + " minutes");
        System.out.println("Adjusted Time: " + Math.round(adjustedTime) + " minutes");
        System.out.println("Servings: " + servings);
        
        // Additional tips
        System.out.println();
        System.out.println("Cooking Tips:");
        System.out.println("- Always preheat your oven");
        System.out.println("- Check food 5 minutes before suggested time");
        System.out.println("- Use a food thermometer for accuracy");
        
        // Close scanner to prevent resource leaks
        scanner.close();
        
        /* 
         * This program demonstrates several key Java concepts:
         * 1. Package declaration for organization
         * 2. Import statements for external classes (Scanner, Math)
         * 3. Public class declaration with proper naming
         * 4. Main method with correct signature
         * 5. Variable declaration and initialization
         * 6. User input using Scanner class
         * 7. Mathematical calculations and method calls
         * 8. Console output with formatting
         * 9. Proper resource management (closing Scanner)
         * 10. Comprehensive commenting (single-line, multi-line, and Javadoc)
         */
    }
} 