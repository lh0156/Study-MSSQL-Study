insert into memberTBL(mem_id, mem_name, mem_gender, mem_join, mem_email)
	values ('hong', 'ȫ�浿', 'M', '2222-12-25', 'hong@hong.com');
insert into memberTBL(mem_id, mem_name, mem_gender, mem_join, mem_email)
	values ('kim', '������', 'M', '1111-11-11', 'kim@kim.com');
insert into memberTBL(mem_id, mem_name, mem_gender, mem_join, mem_email)
	values ('Sin', '�Ż��Ӵ�', 'F', '3333-11-11', 'sin@sin.com');
--���� ���� �־��ְ�

ALTER TABLE dbo.memberTBL
	ADD mem_point int not null

--���� �߻�!!
--ALTER TABLE�� Null ���� �����ϰų� DEFAULT ���ǰ� ������ ���� �߰��� �� �ֽ��ϴ�.
--�Ǵ� �߰��Ǵ� ���� ID �Ǵ� Ÿ�ӽ����� ���̾�� �մϴ�.
--���� ������ ��� �������� ���� ��� ���̺��� ��� �־�� �� ���� �߰��� �� �ֽ��ϴ�. 
--�� 'mem_point'��(��) �̷��� ������ �������� �����Ƿ� ��� ���� ���� ���̺� 'memberTBL'�� �߰��� �� �����ϴ�.

ALTER TABLE dbo.memberTBL
	ADD mem_point int default('0')

ALTER TABLE dbo.memberTBL
	ADD mem_point int default '0'

ALTER TABLE DBO.MEMBERTBL
	DROP COLUMN MEM_POINT

/* �� ��������� ����� ��
SSMS�� Default���� ���׵� ���� ������� �Ѵ�.
*/
sp_help membertbl;

--��ɾ�� ������׸��� �˾Ƴ� ��

-- ��������� �����Ŀ� 

ALTER TABLE dbo.memberTBL  
	DROP CONSTRAINT DF__memberTBL__mem_p__3C69FB99;  

-- �÷��� �����ش�

ALTER TABLE dbo.memberTBL DROP COLUMN mem_point;

/* *** SSMS�� SELECTTopNRows ��� ��ũ��Ʈ!*/
SELECT TOP (1000) 
	*
FROM [TESTDB].[dbo].[membertbl]

--1. Default
--2. indentity(1,1)�� ����� ���� �� ����!

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
