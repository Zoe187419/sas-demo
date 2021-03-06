


ODS HTML PATH="&JES.SG/S_8_3" (URL=NONE) BODY="Limits.html";
ODS GRAPHICS ON / RESET IMAGENAME="F8_3_";

TITLE "DOT";
PROC SGPLOT DATA=JES.Results;
	DOT Vendor /RESPONSE=Resistance STAT=MEAN;
RUN; 

TITLE "DOT with Confidence Limits";
PROC SGPLOT DATA=JES.Results;
	DOT Vendor /RESPONSE=Resistance  
	STAT=MEAN LIMITS=BOTH LIMITSTAT=CLM ALPHA=0.10;
RUN; 

TITLE "HLINE";
PROC SGPLOT DATA=JES.Results;
	HLINE Vendor / RESPONSE=Resistance STAT=MEAN;
RUN;

TITLE "HLINE with Confidence Limits";
PROC SGPLOT DATA=JES.Results;
	HLINE Vendor / RESPONSE=Resistance 
	STAT=MEAN LIMITS=BOTH LIMITSTAT=CLM ALPHA=0.10;
RUN;

TITLE "VLINE";
PROC SGPLOT DATA=JES.Results;
	VLINE Vendor / RESPONSE=Resistance STAT=MEAN;
RUN;

TITLE "VLINE with Confidence Limits";
PROC SGPLOT DATA=JES.Results;
	VLINE Vendor / RESPONSE=Resistance 
	STAT=MEAN LIMITS=BOTH LIMITSTAT=CLM ALPHA=0.10;
RUN;

ODS GRAPHICS OFF;
ODS HTML CLOSE;

