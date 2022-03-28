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

ALTER TABLE dbo.memberTbl
	DROP COLUMN
		mem_point4
		,mem_point5
		,mem_point6
;

/* RENAME COLUMN */
/* exec는 execute의 줄임말!
EXEC sp_rename '테이블명.기존 컬럼명', '새 컬럼명'; */ 
EXEC sp_rename 'dbo.memberTBL.mem_point5', 'mem_point1';

