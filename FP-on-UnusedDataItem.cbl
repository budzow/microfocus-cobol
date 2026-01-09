       IDENTIFICATION DIVISION.
       PROGRAM-ID. FP-on-UnusedDataItem.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * cobol:COBOL.UnusedDataItem raises FP here as CUSTOM-TYPE is used
      * on the line 9
       01 CUSTOM-TYPE TYPEDEF PIC X(5).
       01 VAR-OF-CUSTOM-TYPE TYPE CUSTOM-TYPE VALUE "Hello".

       PROCEDURE DIVISION.
           DISPLAY "VAR-OF-CUSTOM-TYPE contains: " VAR-OF-CUSTOM-TYPE
           STOP RUN.
