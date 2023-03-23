-- 날짜데이터형식과 연산 사용하기

-- 자료형
-- 날짜자료형 다루기
-- 자료형 변환함수

use bookstore;

-- 현재 날짜시간 조회
select current_timestamp();
select now();
select sysdate();
select curdate();

-- 현재 날짜형식을 출력
select date_format(now(), '%Y-%m-%d');

select date_format(curdate(),'%d-%m, %Y');

select orderdate from orders; 

select date_format(orderdate,'%d-%m, %Y')
from orders;

-- 문자열 날짜 데이터형식을 date 형식으로
select cast('2021-02-19 11:11:40' as date) as 'date';

select cast('2021-02-19 11:11:40' as datetime) as 'date';

-- orderdate 컬럼
select * from orders;
select cast(orderdate as datetime) from orders;

-- 날짜 및 시간 더하기/빼기
-- 기준날짜로부터 하루 뒤 날짜 조회
select date_add('2021-03-07 23:59:59', interval 1 day);

select date_add('2021-03-07 23:59:59', interval -10 day);

-- orders 테이블에서 주문일자의 한달전, 하루전 날짜 계산
select orderdate, date_add(orderdate, interval -1 month) from orders;

select orderdate, date_add(orderdate, interval -1 day) from orders;

-- 쿼터
select quarter(orderdate) from orders;

select quarter(date_add(orderdate, interval + 3 month)) as 분기
from  orders;