TradeMons:
; givemonster, getmonster, textstring, nickname (11 bytes), 14 bytes total
IF DEF(_ENCBLUEJP)
	db RHYDON,		KANGASKHAN,	0, "RODAN@@@@@@"
	db JIGGLYPUFF,	MR_MIME,   	0, "MASARU@@@@@"
	db BUTTERFREE,	BEEDRILL,  	2, "CHIKUCHIKU@"
	db GROWLITHE,	KRABBY,     0, "DRAK@@@@@@@"
	db PIDGEY,		FARFETCHD, 	2, "AKKA@@@@@@@"
	db PERSIAN,		TAUROS, 	0, "GYUTA@@@@@@"
	db MACHOKE,		HAUNTER,	1, "GHOSUKE@@@@"
	db KADABRA,		GRAVELER,	1, "SABURO@@@@@"
	db SEEL,		SLOWPOKE,	2, "OSCAR@@@@@@"
	db RATTATA,		POLIWAG,	2, "POLI-TAN@@@"
ELSE
	db NIDORINO,  NIDORINA, 0,"BIBICHE@@@@"
	db ABRA,      MR_MIME,  0,"MARCEL@@@@@"
	db BUTTERFREE,BEEDRILL, 2,"CHIKUCHIKU@"
	db PONYTA,    SEEL,     0,"BIBI@@@@@@@"
	db SPEAROW,   FARFETCHD,2,"JULIO@@@@@@"
	db SLOWBRO,   LICKITUNG,0,"GLAVIOTEUR@"
	db POLIWHIRL, JYNX,     1,"NINI@@@@@@@"
	db RAICHU,    ELECTRODE,1,"KOURJUS@@@@"
	db VENONAT,   TANGELA,  2,"BIGOUDI@@@@"
	db NIDORAN_M, NIDORAN_F,2,"FABI@@@@@@@"
ENDC