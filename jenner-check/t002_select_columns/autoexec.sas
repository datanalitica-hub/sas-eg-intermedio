/* cap input rows for the captured run */
options obs=100;

/* Mock efw.pais library: minimal country table matching the columns
   referenced across the repo's exercises (Codigo_IsoA2_Pais,
   Codigo_IsoA3_Pais, Nombre_Pais, Sub_Continente_Pais). The upstream
   script assumes a pre-loaded 'efw' library from the SAS EG project;
   this substitutes a small sample so the query logic runs unmodified.
   Country names use underscores instead of spaces so plain list input
   reads them correctly alongside the numeric column that follows. */
libname efw (work);

data efw.pais;
	length Codigo_IsoA2_Pais $2 Codigo_IsoA3_Pais $3 Nombre_Pais $40 Sub_Continente_Pais 8;
	input Codigo_IsoA2_Pais $ Codigo_IsoA3_Pais $ Nombre_Pais $ Sub_Continente_Pais;
	datalines;
DO DOM Republica_Dominicana 1
US USA Estados_Unidos 2
CA CAN Canada 2
MX MEX Mexico 1
BR BRA Brasil 3
AR ARG Argentina 3
CO COL Colombia 1
CL CHL Chile 3
PE PER Peru 3
ES ESP Espana 4
;
run;
