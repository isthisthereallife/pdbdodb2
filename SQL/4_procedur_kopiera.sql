CREATE DEFINER=`root`@`localhost` PROCEDURE `kopiera_inaktiva_elever_till_ny_lista`()
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN

/*kopiera, vid noll träffar i betyg_aktiv på personnummer ('elev' i betyg_aktiv )*/
INSERT INTO elev_inaktiv SELECT * FROM elev_aktiv WHERE personnummer NOT IN (SELECT elev FROM betyg_aktiv);

END