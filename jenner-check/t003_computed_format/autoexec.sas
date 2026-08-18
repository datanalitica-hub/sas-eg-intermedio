/* cap input rows for the captured run */
options obs=100;

/* Mock efw.econvar2005 library: minimal Economic Freedom of the World
   -style component-score table matching the columns the script reads
   (Codigo_IsoA3_Pais, EFW1..EFW5). The upstream script assumes a
   pre-loaded 'efw' library from the SAS EG project; this substitutes a
   small sample so the averaging/format logic runs unmodified. */
libname efw (work);

data efw.econvar2005;
	length Codigo_IsoA3_Pais $3;
	input Codigo_IsoA3_Pais $ EFW1 EFW2 EFW3 EFW4 EFW5;
	datalines;
DOM 6.8 7.1 6.5 7.0 6.9
USA 8.1 8.0 7.9 8.2 8.0
CAN 7.9 7.8 7.7 8.0 7.8
MEX 6.5 6.7 6.4 6.6 6.5
BRA 6.0 6.2 5.9 6.1 6.0
ARG 5.5 5.7 5.4 5.6 5.5
COL 6.9 7.0 6.8 7.1 6.9
CHL 7.6 7.7 7.5 7.8 7.6
PER 7.0 7.1 6.9 7.2 7.0
ESP 7.3 7.4 7.2 7.5 7.3
;
run;
