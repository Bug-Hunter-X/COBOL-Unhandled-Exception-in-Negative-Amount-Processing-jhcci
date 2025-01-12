```cobol
       IF WS-AMOUNT IS NEGATIVE
           MOVE WS-AMOUNT TO WS-NEGATIVE-AMOUNT
           PERFORM 9000-HANDLE-NEGATIVE-AMOUNT
       END-IF

       IF WS-AMOUNT = ZERO
           DISPLAY "Amount is zero. Please enter a valid amount."
       ELSE
           IF WS-AMOUNT > 99999999
               DISPLAY "Amount exceeds the maximum allowed value."
           ELSE
              * ... rest of the program ...
           END-IF
       END-IF

       9000-HANDLE-NEGATIVE-AMOUNT SECTION.
           DISPLAY "Negative amount detected.  Processing...".
           * Add further error-handling logic here to process negative amounts gracefully.
           EXIT SECTION.
```