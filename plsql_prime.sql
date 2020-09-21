  
DECLARE
DATA2LOOP INTEGER(32767); 
/* cerner_2^5_2020*/
/* PLSQL to PRIME betwEEn 1 - 100 */
BEGIN 
	FOR i IN 1..DATA2LOOP LOOP 
		IF i IN ( 1, 5, 7 ) THEN 
			dbms_output.Put_line(' These are known prime numbers: '||i); 
		END IF; 
		-- cerner_2^5_2020
		IF i NOT IN ( 1, 5, 7 ) THEN 
			IF MOD(i, 3) = 0 
				OR MOD(i, 6) = 0 
				OR MOD(i, 9) = 0 THEN 
				NULL; 
			ELSIF MOD(i, 2) = 0 
				OR MOD(i, 4) = 0 
				OR MOD(i, 8) = 0 THEN 
				NULL; 
			ELSIF MOD(i, 5) = 0 
				OR MOD(i, 10) = 0 THEN 
				NULL; 
			ELSIF MOD(i, 7) = 0 THEN 
				NULL; 
			ELSE 
				dbms_output.Put_line(' Is a prime number?'||i); 
			END IF; 
		END IF; 
	END LOOP; 
END; 