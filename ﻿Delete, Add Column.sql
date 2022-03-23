ALTER TABLE dbo.memberTBL
	ADD mem_point int default('0')

ALTER TABLE dbo.memberTBL
	ADD mem_point int default '0'

ALTER TABLE DBO.MEMBERTBL
	DROP COLUMN MEM_POINT

ALTER TABLE dbo.memberTBL DROP COLUMN mem_point;

ALTER TABLE dbo.memberTBL  
	DROP CONSTRAINT DF__memberTBL__mem_p__37A5467C;  

sp_help membertbl;

select * from dbo.memberTBL

insert into dbo.memberTBL(member_id, 