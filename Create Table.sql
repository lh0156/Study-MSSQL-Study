CREATE TABLE dbo.memberTBL(
	member_id varchar(16) primary key,
	mem_name nchar(10) not null,
	mem_gender char(1) not null,
	mem_join date not null,
	mem_eamil varchar(98)
);
