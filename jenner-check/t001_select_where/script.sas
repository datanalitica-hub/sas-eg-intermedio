/*Ejemplo 1*/
PROC SQL;
	SELECT * 
	   FROM efw.pais
	   WHERE Codigo_IsoA2_Pais = 'DO';
QUIT;
