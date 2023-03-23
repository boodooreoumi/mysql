/*내장함수,수치문자열 연산자 사용하기*/
-- 수치연산자, 논리연산자, 

-- 1. sql연산
select 100*0.1 as result;

-- book테이블의 price에 0.05를 곱해
select price*0.05 from book;
select (price/2)*100 from book;

-- 2. 비교연산
select 1>100;
select 1<100;
select 10=10;
select 101<>10;
select 101!=10;

-- 3. 논리연산
select (10>10) or (5<10);
select not (10>10);

-- 집계함수 as 
-- 고객이 주문한 도서의 총 판마액은?
select sum(saleprice)
from orders;

-- 고객이 주문한 도서의 총 판매액,평균값,최저가,최고가를 구하시오
select sum(saleprice) as 합계,
       avg(saleprice) as 평균,
       min(saleprice) as 최저,
       max(saleprice) as 최대
from orders;

-- 문자열
-- trim() 문자열 좌우공백제거
select trim(' 안녕하세요 ');
-- ltrim() 좌측공백제거
select ltrim(' 안녕하세요 ');
-- rtrim() 우측 공백제거
select rtrim(' 안녕하세요 ');
-- leading => 문자열 좌측문자 제거
select trim(leading '안' from '안녕하세요안');
-- trailing => 문자열 우측문자 제거
select trim(trailing '요' from '요안녕하세요');

-- 문자의 개수
-- length => 문자의 바이트단위
-- char_length => 문자의길이

select length('안녕');

select char_length('안녕');
select character_length('안녕');

select upper('sql로 시작하는 하루');
select lower(bookname) from book;

# 문자열 결합
select concat('홍길동','모험');
select concat_ws(',','홍길동','모험');
select concat_ws(':','2019','11','19');

select concat('홍길동','모험');
select '홍길동','모헝';

select concat('도서명: ',bookname)
from book;

select concat_ws(':',bookname,publisher)
from book;

