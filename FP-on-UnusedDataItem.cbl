       IDENTIFICATION DIVISION.
       PROGRAM-ID. FP-on-UnusedDataItem.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * cobol:COBOL.UnusedDataItem raises FP here as MY-TYPE is used
      * on the line 9. Also MY-TYPE is not a "data item block" as the message
      *	claims, it's a type definition
       01 MY-TYPE TYPEDEF PIC X(5).       
       01 MY-VAR TYPE MY-TYPE VALUE "Hello".
	   
       PROCEDURE DIVISION.
           DISPLAY "MY-VAR: " MY-VAR.
           STOP RUN.
