/*Ejemplo 7*/
PROC SQL;
	select Nombre_Continente, MIN(GDPPerCapita), MAX(POP)
	   from efw.econvar2006
	   where Nombre_Continente = 'AM�RICA'
	   group by Nombre_Continente;
QUIT;
