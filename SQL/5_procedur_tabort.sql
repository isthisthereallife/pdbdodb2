CREATE DEFINER=`root`@`localhost` PROCEDURE `ta_bort_inaktiva_elever`()
LANGUAGE SQL
NOT DETERMINISTIC
CONTAINS SQL
SQL SECURITY DEFINER
COMMENT ''
BEGIN

DELETE FROM elev_aktiv WHERE personnummer NOT IN (SELECT elev FROM betyg_aktiv);

END