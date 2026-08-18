/* cap input rows for the captured run */
options obs=100;

/* Mock efw.econvar2006 library: minimal country economic-indicator
   table matching the columns the script aggregates and filters on
   (Nombre_Continente, GDPPerCapita, POP, Codigo_IsoA3_Pais). The
   upstream script assumes a pre-loaded 'efw' library from the SAS EG
   project; this substitutes a small sample -- including the accented
   'AMÉRICA' label the WHERE clause filters on -- so the
   GROUP BY / HAVING logic runs unmodified. Continent names are single
   tokens (no embedded spaces) so plain list input reads them correctly
   alongside the numeric columns that follow. */
libname efw (work);

data efw.econvar2006;
	length Codigo_IsoA3_Pais $3 Nombre_Continente $20;
	input Codigo_IsoA3_Pais $ Nombre_Continente $ GDPPerCapita POP;
	datalines;
DOM AMÉRICA 2400 10800000
USA AMÉRICA 63000 331000000
CAN AMÉRICA 46000 38000000
MEX AMÉRICA 10100 128900000
BRA AMÉRICA 8900 212600000
ARG AMÉRICA 10600 45200000
COL AMÉRICA 6400 50900000
CHL AMÉRICA 15300 19100000
PER AMÉRICA 2100 33000000
ESP EUROPA 29600 47400000
FRA EUROPA 40500 67400000
;
run;
