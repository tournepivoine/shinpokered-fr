PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMsEntries,  PrizeMenuTMsCost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db CUBONE
	db CACTORMUS
	db SQUEAMATA
	db "@"

PrizeMenuMon1Cost:
	bcd2 500
	bcd2 1000
	bcd2 2000
	db "@"

PrizeMenuMon2Entries:
	db SCYTHER
	db PINSIR
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	bcd2 3500
	bcd2 3500
	bcd2 7000
	db "@"

PrizeMenuTMsEntries:
	db MOON_STONE
	db TM_HYPER_BEAM
	db TM_SUBSTITUTE
	db "@"

PrizeMenuTMsCost:
	bcd2 3000
	bcd2 5000
	bcd2 7000
	db "@"
