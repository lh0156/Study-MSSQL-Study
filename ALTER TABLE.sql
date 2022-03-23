/*﻿
- 기존 테이블에 새로운 열을 추가한다.
- 또는 기존 열을 삭제할 떄 ALTER문을 사용하여 처리한다
- 초보자 주의사항
 * 처음부터 DB 업무 파악을 잘하여 변경할 일이 없도록 하면 좋다.
 * 변경(추가, 수정, 삭제)은 생성보다 생각할 게 많다.

﻿*/

Alter Table dbo.memberTbl
	add mem_point(추가할 컬럼 명) int(데이터 타입) null

/*﻿
- 새롭게 추가된 컬럼은 자동적으로 테이블의 맨 마지막 컬럼이 된다.
- 추가 시 내가 임의적으로 컬럼의 위치를 지정할 수는 없다.﻿
- 그럼 컬럼의 순서나 위치를 변경하고 싶다면?
 * 기본적으로는 업무파악을 잘해서 중간에 변경하지 않도록 함
 * 가장 좋은 방법은 애플리케이션이나 쿼리 수준에서 하는 것.

- 즉, 쿼리로 반환된 열에서 순서를 지정하는게 좋다.
﻿﻿
*/

ALTER TABLE.dbo.memberTbl
	ADD mem_point int NULL

ALTER TABLE dbo.memberTbl
	DROP COLUMN mem_point
