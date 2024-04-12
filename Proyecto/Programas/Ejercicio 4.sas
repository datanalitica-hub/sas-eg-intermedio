/*Ejemplo 4*/
PROC SQL;
	SELECT * 
	   FROM efw.pais
	   WHERE Codigo_IsoA2_Pais = 'DO';

	SELECT Codigo_IsoA2_Pais, Codigo_IsoA3_Pais, Nombre_Pais 
	   FROM efw.pais
	   WHERE Codigo_IsoA2_Pais = 'DO';
QUIT;
