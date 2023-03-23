/* limit, order by case 구문 통한 조건 제어 */

use bookstore;

/* 도서를 이름순으로 검색하시오. */
select *
from book
order by bookname;

/* 가격순으로 정렬 */
select *
from book
order by price;

/* 도서를 가격순으로 검색하고, 가격이 같으면 이름순으로 검색 */
select *
from book
order by price, bookname;

/* 오름차순/내림차순 지시 */
select *
from book
order by price desc, publisher asc;

select *
from orders
order by orderdate desc;

-- 판매가격이 1000 이상인 결과를 도서번호호 출력하시오
select *
from orders
where saleprice >= 1000
order by bookid;

-- 컬럼번호 1번,3번 순서로 정렬
select *
from book
order by 1,3;

-- distinct : 중복되지않은 결과 도출
-- 주문 고객목록
select distinct custid from orders;

-- 판매 가격목록
select distinct saleprice from orders;

-- 주문이 있는 고객의 숫자
select count(distinct custid) from orders;

-- 조건제어
select if (100>200,'참이다','거짓이다');

-- 다중조건

SELECT custid, SUM(saleprice) AS '총구매액',
       CASE
            WHEN (SUM(saleprice) >= 15000) THEN '최우수고객'
            WHEN (SUM(saleprice) >= 10000) THEN '우수고객'
            WHEN (SUM(saleprice) >= 5000) THEN '일반고객'
            ELSE '유령고객'
       END AS '고객등급'
FROM orders
GROUP BY custid;    