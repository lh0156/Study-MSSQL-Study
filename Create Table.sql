CREATE TABLE dbo.memberTBL(
	mem_id varchar(16) primary key,
	mem_name nchar(10) not null,
	mem_gender char(1) not null,
	mem_join date not null,
	mem_email varchar(98)
);

-- 디폴트는 내 PC -> 문서 -> SQL Server Management Studio에 저장된다.