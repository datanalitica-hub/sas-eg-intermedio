/*Ejemplo 5*/
PROC SQL;
	select Nombre_Continente, AVG(GDPPerCapita), AVG(POP)
	   from efw.econvar2006
	   group by Nombre_Continente;
QUIT;
