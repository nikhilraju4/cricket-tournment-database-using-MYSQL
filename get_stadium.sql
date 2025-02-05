CREATE DEFINER=`root`@`localhost` PROCEDURE `get_stadium`(IN matchnum varchar(30) )
BEGIN
select stadium from matches where match_id = matchnum;
END
