/* where 조건비교연산자,패턴매칭,null,limit */
use bookstore;

/* book테이블에서 가격이 22000원 미만인 도서 */
select *
from book
where price < 22000;

/* 가격이 10000원 이상 20000원 미만인 도서는? */
select *
from book
where price >=10000 and price < 20000;

/* 위의 문제를 between 연산자를 사용하여 구하면> */
select *
from book
where price between 10000 and 20000;

/* 날짜 비교 */
/* 주문일자가 2021/02/01~2021/02/09 인 주문을 출력 */
select *
from bookstore.orders
where orderdate between '2021-02-01' and '2021-02-09';

select *
from bookstore.orders
where orderdate >= '2021-02-01' and orderdate <= '2021-02-09';

/* 여러연산자에 ㄸ른 결과 */
/* 도서번호가 3,4,5,6인 주문목록을 출력 */
select *
from bookstore.orders
where bookid in (3,4,5,6);

select *
from bookstore.orders
where bookid between 3 and 6;

select *
from bookstore.orders
where bookid > 2 and bookid < 7;

/***************************************************************/
/* 패턴캐칭 */
/* 박씨 성을 가진 고객을 출력 하시요 */
select username
from customer
where username like '박%';

/* 두번째 글자가 지 인 고객을 출력하시요 */
select username
from customer
where username like '_지%';

/* 중간글자가 썬 인 도서중 가격이 20000원 이상인 도서를 출력하시오 */
select *
from book
where bookname like '%썬%' and price >= 20000;

/*출판사이름이 정론사이거나 새미디어인 도서는? */
select *
from book
where publisher ='정론사' or publisher = '새미디어';

insert into book
values(11, 'SQL 기본기 다지기', 'MS출판사', null);

select * from book;

/* 레코드 11번에 price를 1000원 올려서 출력 */
select price+100
from book
where bookid=11;

/* null인 레코드를 찾는다 */
select *
from book
where price is null;

/* 집계함수 사용 */
select sum(price), avg(price), count(*), count(price)
from book;

select sum(price), avg(price), count(*)
from book
where bookid<11;

/*ifnull() 내장함수 */
select username as '이름', ifnull(phone, ' 연락처없음') '전화번호'
from customer;