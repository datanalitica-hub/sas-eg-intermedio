/*Ejemplo 9 – Join Implícito*/
PROC SQL;
 select p.Codigo_IsoA3_Pais, p.Nombre_Pais, c.Nombre_Sub_Continente
	   from efw.pais p, efw.sub_continente c
       where p.sub_continente_pais = c.id_sub_continente;
QUIT;
