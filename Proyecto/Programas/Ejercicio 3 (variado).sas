/*Ejemplo 3 (variado)*/
PROC SQL;
	SELECT  Codigo_IsoA3_Pais, 
			(EFW1 + EFW2 + EFW3 + EFW4 + EFW5)/5 AS PROMEDIO_EFW
			format=comma15.2
	   FROM efw.ECONVAR2005;
QUIT;
