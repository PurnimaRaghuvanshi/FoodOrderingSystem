drop procedure sRecord;

delimiter //
create procedure sRecord(in ide varchar(50))
begin
select * from users where uname=ide;
end
//
delimiter ;
