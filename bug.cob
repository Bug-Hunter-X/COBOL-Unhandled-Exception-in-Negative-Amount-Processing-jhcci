```cobol
       IF WS-AMOUNT IS NEGATIVE
           MOVE WS-AMOUNT TO WS-NEGATIVE-AMOUNT
           PERFORM 9000-HANDLE-NEGATIVE-AMOUNT
       END-IF

       IF WS-AMOUNT = ZERO
           DISPLAY "Amount is zero. Please enter a valid amount."
           STOP RUN.
       END-IF

       * ... rest of the program ...
```