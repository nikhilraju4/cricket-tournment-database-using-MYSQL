CREATE DEFINER=`root`@`localhost` PROCEDURE `get_team`(IN team varchar(30))
BEGIN
Select * from team where team_id = team;
END
