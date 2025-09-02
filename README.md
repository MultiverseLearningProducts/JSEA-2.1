# Java Program Structure Basics - Skills Application

## Learning Unit Information
- **Title**: JSE M1 U2: Programming Logic in Java - U2.1 Async - Java Program Structure
- **Skill Level**: BEGINNER
- **Technology Stack**: JAVA
- **Estimated Duration**: 60-85 minutes (1-1.5 hours)

## Learning Objectives
By the end of this unit, learners should be able to:

### Core Concepts
- **Explain the structure of Java programs** and identify key components
- **Define and understand classes** as the fundamental building blocks
- **Comprehend the main method** as the program entry point
- **Understand packages** and their role in code organization
- **Use import statements** to access classes from other packages
- **Differentiate between statements, blocks, and comments**
- **Write basic Java programs** following proper structure

### Specific Skills
- Write a simple "Hello World" program
- Create a basic program using user input
- Apply proper naming conventions and file structure
- Use effective commenting practices
- Understand the relationship between filename and public class name

## Key Concepts Covered

### 1. Classes
- Definition and purpose as the fundamental building block
- Syntax: `public class ClassName { ... }`
- Naming conventions (camelCase, starting with capital letter)
- Every Java program must have at least one class

### 2. Main Method
- Purpose as the entry point for program execution
- Full signature: `public static void main(String[] args)`
- Breakdown of each component:
  - `public`: accessibility
  - `static`: belongs to the class, not an object
  - `void`: no return value
  - `main`: specific method name looked for by JVM
  - `String[] args`: parameter for command-line arguments

### 3. Packages
- Concept for organizing related classes (like chapters in a book)
- Syntax: `package com.example.myproject;`
- Common naming conventions (reverse domain name, lowercase)
- Role in preventing naming conflicts

### 4. Import Statements
- Purpose: access classes from other packages
- Placement: after package, before class
- Example: `import java.util.Scanner;`
- Java Class Library (API) overview

### 5. Code Elements
- **Statements**: Individual instructions ending with semicolon
- **Code Blocks**: Groups of statements enclosed in curly braces `{ }`
- **Comments**: Single-line `//`, multi-line `/* */`, Javadoc `/** */`

## Success Criteria
Learners can successfully:
- [ ] Define what a Java class is and identify its key components
- [ ] Explain the purpose and components of the `main` method
- [ ] Understand how packages organize code and use import statements
- [ ] Differentiate between statements, blocks, and comments
- [ ] Write a basic "Hello World" program in Java
- [ ] Write a simple Java program that takes user input and prints output
- [ ] Explain the importance of matching filename to public class name

## Project Structure
```
java-program-structure-basics/
├── src/
│   ├── main/java/          # Main source code
│   └── test/java/          # Test files
├── README.md               # This file
├── .gitignore             # Git ignore rules
└── pom.xml                # Maven configuration
```

## Getting Started
1. Ensure you have Java JDK 8 or higher installed
2. Clone this repository
3. Navigate to the project directory
4. Complete the exercises in the starter code
5. Run tests to verify your understanding

## Assessment Activities
This skills application includes:
- **Code Completion Exercises**: Fill-in-the-blank for class definitions and method signatures
- **Code Writing Tasks**: Create "Hello World" and user input programs
- **Code Analysis**: Identify and fix structural errors
- **Conceptual Questions**: Test understanding of Java program structure

## Career Context
Understanding Java program structure is fundamental for:
- Software Development
- Web Application Development
- Android Development
- Enterprise Software Development
- Backend Services and APIs

Mastering these basics provides a solid foundation for advancing to intermediate and advanced Java concepts. 