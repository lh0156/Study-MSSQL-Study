select * from dbo.memberTBL
insert into dbo.memberTBL(mem_id, mem_name, mem_gender, mem_join, mem_email)
	values ('', '', '', '', '')


sp_help dbo.memberTBL;
CREATE PROCEDURE addMember
(
	@member varchar(16)
	, @name nchar(100)
	, @gender char(1)
	, @day date
	, @mail varchar(98)
)
AS
BEGIN
insert into dbo.memberTBL(mem_id, mem_name, mem_gender, mem_join, mem_email)
	values (@member, @name, @gender, @day, @mail)
END

exec TestProcedure
exec addMember 'SOM', '´Ù¼Ø', 'F', '2000-08-29', 'som@gmail.com';