# COBOL Unhandled Exception in Negative Amount Processing

This repository demonstrates an example of an uncommon yet crucial error in COBOL programs: insufficient exception handling. The `bug.cob` file shows code that lacks robust error handling for negative input amounts. The `bugSolution.cob` file presents a corrected version.

## Problem

The original COBOL code segment only performs a check for negative amounts and then calls another subroutine.  This code does not handle the possibility of other types of exceptions that could occur during this processing. For instance, if `9000-HANDLE-NEGATIVE-AMOUNT` contains errors, this error will not be appropriately caught by this code.

## Solution

The solution involves enhancing error handling by:

1. Implementing more comprehensive exception handling mechanisms to catch potential errors during processing, such as division by zero, file I/O errors, or any other errors within the called subroutine.
2. Providing more informative error messages to users.
3. Using appropriate error handling techniques, such as using a `TRY...CATCH` block (if supported by the compiler), to gracefully handle potential exceptions instead of simply terminating the program.

## How to run the example

1. Install a COBOL compiler (e.g., GnuCOBOL).
2. Compile and execute the `bug.cob` and `bugSolution.cob` files using your chosen COBOL compiler. Observe the differences in error handling.
