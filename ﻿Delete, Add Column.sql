insert into memberTBL(mem_id, mem_name, mem_gender, mem_join, mem_email)
	values ('hong', '홍길동', 'M', '2222-12-25', 'hong@hong.com');
insert into memberTBL(mem_id, mem_name, mem_gender, mem_join, mem_email)
	values ('kim', '김유신', 'M', '1111-11-11', 'kim@kim.com');
insert into memberTBL(mem_id, mem_name, mem_gender, mem_join, mem_email)
	values ('Sin', '신사임당', 'F', '3333-11-11', 'sin@sin.com');
--값을 조금 넣어주고

ALTER TABLE dbo.memberTBL
	ADD mem_point int not null

--에러 발생!!
--ALTER TABLE은 Null 값을 포함하거나 DEFAULT 정의가 지정된 열만 추가할 수 있습니다.
--또는 추가되는 열이 ID 또는 타임스탬프 열이어야 합니다.
--앞의 조건이 모두 만족되지 않을 경우 테이블이 비어 있어야 이 열을 추가할 수 있습니다. 
--열 'mem_point'은(는) 이러한 조건을 만족하지 않으므로 비어 있지 않은 테이블 'memberTBL'에 추가할 수 없습니다.

ALTER TABLE dbo.memberTBL
	ADD mem_point int default('0')

ALTER TABLE dbo.memberTBL
	ADD mem_point int default '0'

ALTER TABLE DBO.MEMBERTBL
	DROP COLUMN MEM_POINT

/* 이 제약사항을 지우는 법
SSMS는 Default제약 사항도 직접 지워줘야 한다.
*/
sp_help membertbl;

--명령어로 제약사항명을 알아낸 후

-- 제약사항을 지운후에 

ALTER TABLE dbo.memberTBL  
	DROP CONSTRAINT DF__memberTBL__mem_p__3C69FB99;  

-- 컬럼을 지워준다

ALTER TABLE dbo.memberTBL DROP COLUMN mem_point;

/* *** SSMS의 SELECTTopNRows 명령 스크립트!*/
SELECT TOP (1000) 
	*
FROM [TESTDB].[dbo].[membertbl]

--1. Default
--2. indentity(1,1)를 써줘야 넣을 수 있음!

ALTER TABLE dbo.memberTbl
	ADD mem_point int default('0')

ALTER TABLE dbo.memberTbl
	ADD mem_point2 int default('0') NOT NULL

ALTER TABLE dbo.memberTbl
	ADD mem_point3 int default '0' NOT NULL

ALTER TABLE dbo.memberTbl
	ADD mem_point4 int IDENTITY(1, 2) NOT NULL

ALTER TABLE dbo.memberTbl
	Drop column mem_point4

ALTER TABLE dbo.memberTbl
	ADD mem_point4 int IDENTITY(1, 1) NOT NULL

ALTER TABLE dbo.memberTbl
	ADD mem_point5 int NULL
