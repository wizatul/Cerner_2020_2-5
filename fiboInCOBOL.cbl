*> program for cerner_2^5_2020
IDENTIFICATION DIVISION.       
PROGRAM-ID. FIBON1. 

ENVIRONMENT DIVISION.          
DATA DIVISION.     

WORKING-STORAGE SECTION.       
77 A PIC 999 VALUE 1.          
77 B PIC S999 VALUE -1.        
77 C PIC 999.                  
77 C1 PIC ZZ9.                 
77 N PIC 99.       
*> cerner_2^5_2020 
PROCEDURE DIVISION.            
PARA1.                         
    MOVE 1 TO A.               
    MOVE -1 TO B.              
    DISPLAY "ENTER N VALUE".   
    ACCEPT N.                  
    DISPLAY N.               
    PERFORM DISP-PARA N TIMES.
    STOP RUN.                
DISP-PARA.                   
    COMPUTE C = A + B.       
    MOVE C TO C1.            
    DISPLAY C1.              
    MOVE B TO A.             
    MOVE C TO B.  
