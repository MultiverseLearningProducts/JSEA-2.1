#!/bin/bash

# Java Program Structure Basics - Skillable Assessment Script
# This script validates completion of technical skills assessment tasks
# Generated from skillable-bash-script-template.sh

result=false
feedback=""
completed_tasks=0

# Task 1: Complete HelloWorld Program (25 points)
task1_complete=true
task1_details=""

# Check if HelloWorld.java exists and has required content
if [[ ! -f "src/main/java/com/skills/java/HelloWorld.java" ]]; then
    task1_complete=false
    task1_details+="HelloWorld.java file not found. "
fi

# Check if package declaration is present
if [[ -f "src/main/java/com/skills/java/HelloWorld.java" ]]; then
    if ! grep -q "package com.skills.java;" "src/main/java/com/skills/java/HelloWorld.java"; then
        task1_complete=false
        task1_details+="Package declaration missing. "
    fi
fi

# Check if System.out.println statement is present
if [[ -f "src/main/java/com/skills/java/HelloWorld.java" ]]; then
    if ! grep -q "System.out.println" "src/main/java/com/skills/java/HelloWorld.java"; then
        task1_complete=false
        task1_details+="System.out.println statement missing. "
    fi
fi

# Check if Javadoc comment is present
if [[ -f "src/main/java/com/skills/java/HelloWorld.java" ]]; then
    if ! grep -q "/\*\*" "src/main/java/com/skills/java/HelloWorld.java"; then
        task1_complete=false
        task1_details+="Javadoc comment missing. "
    fi
fi

if $task1_complete; then
    completed_tasks=$((completed_tasks + 1))
    feedback+="Task 1: COMPLETED. "
else
    feedback+="Task 1: NOT COMPLETED ($task1_details). "
fi

# Task 2: Implement User Input Program (30 points)
task2_complete=true
task2_details=""

# Check if UserInputProgram.java exists
if [[ ! -f "src/main/java/com/skills/java/UserInputProgram.java" ]]; then
    task2_complete=false
    task2_details+="UserInputProgram.java file not found. "
fi

# Check if Scanner import is present
if [[ -f "src/main/java/com/skills/java/UserInputProgram.java" ]]; then
    if ! grep -q "import java.util.Scanner;" "src/main/java/com/skills/java/UserInputProgram.java"; then
        task2_complete=false
        task2_details+="Scanner import missing. "
    fi
fi

# Check if Scanner object creation is present
if [[ -f "src/main/java/com/skills/java/UserInputProgram.java" ]]; then
    if ! grep -q "Scanner scanner" "src/main/java/com/skills/java/UserInputProgram.java"; then
        task2_complete=false
        task2_details+="Scanner object creation missing. "
    fi
fi

# Check if user input functionality is implemented
if [[ -f "src/main/java/com/skills/java/UserInputProgram.java" ]]; then
    if ! grep -q "scanner.nextLine()\|scanner.nextInt()" "src/main/java/com/skills/java/UserInputProgram.java"; then
        task2_complete=false
        task2_details+="User input functionality missing. "
    fi
fi

if $task2_complete; then
    completed_tasks=$((completed_tasks + 1))
    feedback+="Task 2: COMPLETED. "
else
    feedback+="Task 2: NOT COMPLETED ($task2_details). "
fi

# Task 3: Fix Broken Code (25 points)
task3_complete=true
task3_details=""

# Check if BrokenCode.java exists
if [[ ! -f "src/main/java/com/skills/java/BrokenCode.java" ]]; then
    task3_complete=false
    task3_details+="BrokenCode.java file not found. "
fi

# Check if package declaration is corrected
if [[ -f "src/main/java/com/skills/java/BrokenCode.java" ]]; then
    if ! grep -q "package com.skills.java;" "src/main/java/com/skills/java/BrokenCode.java"; then
        task3_complete=false
        task3_details+="Package declaration not corrected. "
    fi
fi

# Check if class is declared as public
if [[ -f "src/main/java/com/skills/java/BrokenCode.java" ]]; then
    if ! grep -q "public class BrokenCode" "src/main/java/com/skills/java/BrokenCode.java"; then
        task3_complete=false
        task3_details+="Class not declared as public. "
    fi
fi

# Check if main method has static modifier
if [[ -f "src/main/java/com/skills/java/BrokenCode.java" ]]; then
    if ! grep -q "public static void main" "src/main/java/com/skills/java/BrokenCode.java"; then
        task3_complete=false
        task3_details+="Main method missing static modifier. "
    fi
fi

if $task3_complete; then
    completed_tasks=$((completed_tasks + 1))
    feedback+="Task 3: COMPLETED. "
else
    feedback+="Task 3: NOT COMPLETED ($task3_details). "
fi

# Task 4: Run Tests and Validate (20 points)
task4_complete=true
task4_details=""

# Check if test runner scripts exist
if [[ ! -f "run-tests.sh" ]]; then
    task4_complete=false
    task4_details+="run-tests.sh not found. "
fi

if [[ ! -f "simple-test-runner.sh" ]]; then
    task4_complete=false
    task4_details+="simple-test-runner.sh not found. "
fi

# Check if scripts are executable
if [[ -f "run-tests.sh" ]] && [[ ! -x "run-tests.sh" ]]; then
    task4_complete=false
    task4_details+="run-tests.sh not executable. "
fi

if [[ -f "simple-test-runner.sh" ]] && [[ ! -x "simple-test-runner.sh" ]]; then
    task4_complete=false
    task4_details+="simple-test-runner.sh not executable. "
fi

# Try to compile Java files to validate syntax
if [[ -f "src/main/java/com/skills/java/HelloWorld.java" ]] && [[ -f "src/main/java/com/skills/java/UserInputProgram.java" ]] && [[ -f "src/main/java/com/skills/java/BrokenCode.java" ]]; then
    if ! javac -cp . src/main/java/com/skills/java/*.java 2>/dev/null; then
        task4_complete=false
        task4_details+="Java compilation failed - syntax errors present. "
    fi
fi

if $task4_complete; then
    completed_tasks=$((completed_tasks + 1))
    feedback+="Task 4: COMPLETED. "
else
    feedback+="Task 4: NOT COMPLETED ($task4_details). "
fi

# Set final result
if [[ $completed_tasks -eq 4 ]]; then
    result="Correct"
    feedback="All tasks completed successfully! $feedback"
else
    feedback="$completed_tasks out of 4 tasks completed. $feedback"
fi

# CRITICAL: This line must use "Correct" or "Incorrect" as the result value
set_activity_result $result "${feedback}"

# Display results to console
echo "=========================================="
echo "  Java Program Structure Basics"
echo "  Skillable Assessment Results"
echo "=========================================="
echo ""
echo "Tasks Completed: $completed_tasks out of 4"
echo "Result: $result"
echo "Feedback: $feedback"
echo ""
echo "Detailed Task Status:"
echo "Task 1 (HelloWorld): $($task1_complete && echo "COMPLETED" || echo "NOT COMPLETED")"
echo "Task 2 (UserInput): $($task2_complete && echo "COMPLETED" || echo "NOT COMPLETED")"
echo "Task 3 (BrokenCode): $($task3_complete && echo "COMPLETED" || echo "NOT COMPLETED")"
echo "Task 4 (Testing): $($task4_complete && echo "COMPLETED" || echo "NOT COMPLETED")"
echo "" 