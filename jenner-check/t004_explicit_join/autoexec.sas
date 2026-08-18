/* cap input rows for the captured run */
options obs=100;

/* Mock efw.pais and efw.sub_continente libraries: minimal country and
   sub-continent tables matching the columns the join reads
   (Sub_Continente_Pais / Id_Sub_Continente as the join key). The
   upstream script assumes a pre-loaded 'efw' library from the SAS EG
   project; this substitutes small samples so the join logic runs
   unmodified. Names use underscores instead of spaces so plain list
   input reads them correctly alongside the numeric columns that
   follow. */
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

data efw.sub_continente;
	length Nombre_Sub_Continente $30;
	input Id_Sub_Continente Nombre_Sub_Continente $;
	datalines;
1 Caribe
2 Norteamerica
3 Sudamerica
4 Europa_Occidental
;
run;
