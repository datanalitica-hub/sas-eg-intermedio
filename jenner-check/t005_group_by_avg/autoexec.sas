/* cap input rows for the captured run */
options obs=100;

/* Mock efw.econvar2006 library: minimal country economic-indicator
   table matching the columns the script aggregates (Nombre_Continente,
   GDPPerCapita, POP). The upstream script assumes a pre-loaded 'efw'
   library from the SAS EG project; this substitutes a small sample so
   the GROUP BY / aggregate logic runs unmodified. Continent names are
   single tokens (no embedded spaces) so plain list input reads them
   correctly alongside the numeric columns that follow. */
libname efw (work);

data efw.econvar2006;
	length Codigo_IsoA3_Pais $3 Nombre_Continente $20;
	input Codigo_IsoA3_Pais $ Nombre_Continente $ GDPPerCapita POP;
	datalines;
DOM AMERICA 7200 10800000
USA AMERICA 63000 331000000
CAN AMERICA 46000 38000000
MEX AMERICA 10100 128900000
BRA AMERICA 8900 212600000
ARG AMERICA 10600 45200000
COL AMERICA 6400 50900000
CHL AMERICA 15300 19100000
PER AMERICA 6700 33000000
ESP EUROPA 29600 47400000
FRA EUROPA 40500 67400000
DEU EUROPA 46200 83200000
ITA EUROPA 31700 59600000
CHN ASIA 10500 1412000000
IND ASIA 2100 1380000000
JPN ASIA 39300 125800000
;
run;
