#!/bin/bash

# Java Program Structure Basics - Skills Application Test Runner
# This script runs the comprehensive test suite to assess learner understanding

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if Java is installed
check_java() {
    if ! command -v java &> /dev/null; then
        print_error "Java is not installed or not in PATH"
        print_status "Please install Java JDK 8 or higher"
        exit 1
    fi
    
    JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2)
    print_success "Java version detected: $JAVA_VERSION"
}

# Function to check if Maven is installed
check_maven() {
    if ! command -v mvn &> /dev/null; then
        print_error "Maven is not installed or not in PATH"
        print_status "Please install Maven 3.6 or higher"
        exit 1
    fi
    
    MAVEN_VERSION=$(mvn --version | head -n 1)
    print_success "Maven version detected: $MAVEN_VERSION"
}

# Function to clean previous builds
clean_project() {
    print_status "Cleaning previous builds..."
    mvn clean -q
    print_success "Project cleaned successfully"
}

# Function to compile the project
compile_project() {
    print_status "Compiling Java source code..."
    if mvn compile -q; then
        print_success "Project compiled successfully"
    else
        print_error "Compilation failed"
        exit 1
    fi
}

# Function to run tests
run_tests() {
    print_status "Running comprehensive test suite..."
    echo ""
    
    # Run tests with detailed output
    if mvn test -q; then
        echo ""
        print_success "All tests passed successfully! 🎉"
        print_success "Learner has demonstrated understanding of Java program structure basics"
    else
        echo ""
        print_error "Some tests failed"
        print_status "Review the test output above for specific issues"
        print_status "This indicates areas where the learner needs more practice"
        exit 1
    fi
}

# Function to show test summary
show_summary() {
    echo ""
    echo "=========================================="
    echo "           TEST SUMMARY"
    echo "=========================================="
    echo ""
    echo "Tests cover the following learning objectives:"
    echo "✓ Class structure and declaration"
    echo "✓ Main method signature and modifiers"
    echo "✓ Package organization"
    echo "✓ Import statements"
    echo "✓ Code syntax and structure"
    echo "✓ File naming conventions"
    echo "✓ Basic compilation and execution"
    echo ""
    echo "Total test cases: 8 comprehensive assessments"
    echo ""
}

# Main execution
main() {
    echo "=========================================="
    echo "  Java Program Structure Basics"
    echo "  Skills Application Test Runner"
    echo "=========================================="
    echo ""
    
    # Check prerequisites
    print_status "Checking prerequisites..."
    check_java
    check_maven
    echo ""
    
    # Execute test workflow
    clean_project
    compile_project
    run_tests
    show_summary
    
    print_success "Test execution completed successfully!"
}

# Run main function
main "$@" 