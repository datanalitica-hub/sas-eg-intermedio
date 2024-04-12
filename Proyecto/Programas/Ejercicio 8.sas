/*Ejemplo 8*/
PROC SQL;
	select Codigo_IsoA3_Pais, MIN(GDPPerCapita), MAX(POP)
	   from efw.econvar2006
	   where Nombre_Continente = 'AMÉRICA'
	   group by Codigo_IsoA3_Pais
	   having MIN(GDPPerCapita) < 3000;
QUIT;
