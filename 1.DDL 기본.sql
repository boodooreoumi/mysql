/* 환경변수 확인 */
show variables;

show variables like 'char_%';

show databases;

use world;

show tables;

drop database lecture;

show databases;

create database lecture;

use lecture;

show tables;

create table BookLibrary (
	bookid	integer,
    bookname varchar(20),
    publisher varchar(20),
    price integer
);

drop table BookLibrary;    

/*제약조건*/

create table BookLibrary (
	bookid	integer,
    bookname varchar(20),
    publisher varchar(20),
    price integer,
    primary key(bookid)
);

drop table BookLibrary; 

create table BookLibrary (
	bookid	integer primary key,
    bookname varchar(20),
    publisher varchar(20),
    price integer
);

drop table BookLibrary; 

create table BookLibrary (
	bookid	integer,
    bookname varchar(20),
    publisher varchar(20),
    price integer,
    primary key (bookname, publisher)
);

drop table BookLibrary; 

/* bookname은 null값을 가질수 없고, publisher는 같은 값이 있으면 안됨
   price값은 입력되지 않을 경우 기본값 10000을 가지며,
   가격은 최소 5000 이상 */

create table BookLibrary (
	bookname varchar(20) not null,
    publisher varchar(20) unique,
    price integer default 10000 check(price > 5000),
    primary key (bookname, publisher)
);

/* BookLibrary 테이블에 varchar(30)의 자료형을 가진 inventory 속성을 추가 */
alter table BookLibrary add inventory varchar(30);

/* inventory 속성의 데이터타입을 integer로 변경 */
alter table BookLibrary modify inventory integer;

/* inventory 속성을 삭제 */
alter table BookLibrary drop column inventory;
 