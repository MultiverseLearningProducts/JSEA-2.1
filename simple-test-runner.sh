#!/bin/bash

# Simple Test Runner for Java Program Structure Basics
# This script works without Maven for basic validation

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check Java installation
check_java() {
    if ! command -v java &> /dev/null; then
        print_error "Java is not installed or not in PATH"
        exit 1
    fi
    
    JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2)
    print_success "Java version detected: $JAVA_VERSION"
}

# Compile all Java files
compile_project() {
    print_status "Compiling Java source code..."
    
    if javac -cp . src/main/java/com/skills/java/*.java; then
        print_success "Project compiled successfully"
    else
        print_error "Compilation failed"
        exit 1
    fi
}

# Test HelloWorld program
test_helloworld() {
    print_status "Testing HelloWorld program..."
    
    cd src/main/java
    OUTPUT=$(java com.skills.java.HelloWorld)
    cd ../../..
    
    if [ "$OUTPUT" = "Hello, World!" ]; then
        print_success "HelloWorld program works correctly"
    else
        print_error "HelloWorld program output incorrect: '$OUTPUT'"
        exit 1
    fi
}

# Test UserInputProgram compilation
test_userinput_compilation() {
    print_status "Testing UserInputProgram compilation..."
    
    if javac -cp . src/main/java/com/skills/java/UserInputProgram.java; then
        print_success "UserInputProgram compiles successfully"
    else
        print_error "UserInputProgram compilation failed"
        exit 1
    fi
}

# Test BrokenCode compilation
test_brokencode_compilation() {
    print_status "Testing BrokenCode compilation..."
    
    if javac -cp . src/main/java/com/skills/java/BrokenCode.java; then
        print_success "BrokenCode compiles successfully"
    else
        print_error "BrokenCode compilation failed"
        exit 1
    fi
}

# Test RecipeCalculator compilation
test_recipecalculator_compilation() {
    print_status "Testing RecipeCalculator compilation..."
    
    if javac -cp . src/main/java/com/skills/java/RecipeCalculator.java; then
        print_success "RecipeCalculator compiles successfully"
    else
        print_error "RecipeCalculator compilation failed"
        exit 1
    fi
}

# Show test summary
show_summary() {
    echo ""
    echo "=========================================="
    echo "           SIMPLE TEST SUMMARY"
    echo "=========================================="
    echo ""
    echo "Tests completed successfully:"
    echo "✓ Java compilation"
    echo "✓ HelloWorld program execution"
    echo "✓ UserInputProgram compilation"
    echo "✓ BrokenCode compilation"
    echo "✓ RecipeCalculator compilation"
    echo ""
    echo "All basic functionality tests passed!"
    echo ""
}

# Main execution
main() {
    echo "=========================================="
    echo "  Java Program Structure Basics"
    echo "  Simple Test Runner"
    echo "=========================================="
    echo ""
    
    check_java
    compile_project
    test_helloworld
    test_userinput_compilation
    test_brokencode_compilation
    test_recipecalculator_compilation
    show_summary
    
    print_success "Simple test execution completed successfully!"
}

main "$@" 