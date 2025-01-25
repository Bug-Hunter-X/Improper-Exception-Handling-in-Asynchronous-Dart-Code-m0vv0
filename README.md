# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in Dart: inadequate exception handling in asynchronous operations. The `bug.dart` file showcases code that attempts to fetch data asynchronously but doesn't handle exceptions effectively. The `bugSolution.dart` file provides a corrected version with improved error handling.

## Problem
The original code uses a single `catch` block for all exceptions, making it difficult to distinguish between different types of errors and respond appropriately.  This leads to less robust and maintainable code. 

## Solution
The solution uses specific `catch` blocks to handle different exception types (`TimeoutException`, `Exception`, and a general `catch` for unexpected errors). This allows for more precise error handling and informative logging. 