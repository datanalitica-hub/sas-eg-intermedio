/*Ejemplo 6*/
PROC SQL;
	select Nombre_Continente, MIN(GDPPerCapita), MAX(POP)
	   from efw.econvar2006
	   group by Nombre_Continente;
QUIT;
