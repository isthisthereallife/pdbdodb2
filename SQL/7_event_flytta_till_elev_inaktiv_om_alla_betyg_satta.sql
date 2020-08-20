CREATE EVENT `flytta_till_elev_inaktiv_om_alla_betyg_satta`
	ON SCHEDULE
		EVERY 1 DAY STARTS '2020-08-20 00:00:01'
	ON COMPLETION PRESERVE
	ENABLE
	COMMENT ''
	DO BEGIN
CALL kopiera_inaktiva_elever_till_ny_lista;
CALL ta_bort_inaktiva_elever;
END