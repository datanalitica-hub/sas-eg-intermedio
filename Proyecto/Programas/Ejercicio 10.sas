/*Ejemplo 10 – Join Explícito*/
PROC SQL;
      SELECT p.Codigo_ISOA3_Pais, 
             p.Nombre_Pais, 
             c.Nombre_Sub_Continente
       FROM EFW.PAIS p
           INNER JOIN EFW.SUB_CONTINENTE c 
			ON (p.Sub_Continente_Pais = c.Id_Sub_Continente);
QUIT;
