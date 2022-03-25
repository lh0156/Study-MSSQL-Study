--동시에 열 추가
ALter table dbo.memberTbl
  ADD mem_point int null,
  ADD mem_point2 int null,
  ADD mem_point3 int null

ALTER TABLE dbo.memberTbl ADD (
 mem_point int null,
 mem_point2 int null,
 mem_nickname varchar(2) null
);

ALTER TABLE dbo.memberTbl ADD 
 mem_point2 int null,
 mem_point3 int null,
 mem_point4 varchar(2) null
;

ALTER TABLE dbo.memberTbl
	ADD
		mem_point5		int			null,
		mem_point6		int			null,
		mem_point7		varchar(20) null

-- 동시에 열 삭제
ALTER TABLE dbo.memberTbl DROP COLUMN
	mem_point2
	,mem_point3
	,mem_point4
;

