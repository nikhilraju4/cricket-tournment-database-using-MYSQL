CREATE DEFINER=`root`@`localhost` TRIGGER `team_AFTER_UPDATE`
AFTER UPDATE ON `team` 
FOR EACH ROW 
BEGIN
update player set team_id=new.team_id where
team_id=old.team_id;
update coach set team_id=new.team_id
where team_id=old.team_id;
update captain set team_id=new.team_id where
team_id=old.team_id;
update plays set team_id=new.team_id where
team_id=old.team_id;
update wicket_keeper set team_id=new.team_id where
team_id=old.team_id;
END
