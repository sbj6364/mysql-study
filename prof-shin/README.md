# 마당 서점 Database Query

> Reference: MySQL로 배우는 데이터베이스 개론과 실습  



### Development Environment

- **Language** MySQL
- **IDE** DataGrip, IntelliJ



### Introduction

MySQL에 대한 기초적인 이해를 위해 책에 나오는 query를 풀어보고자 한다. `madang` 이라는 이름의 database는 옛날 마당서점이라는 이름으로 손수 책을 사고 팔았던 시절을 현대 relational database system을 통해 임의로 재현하여 정리한 것이다. 



먼저, database `madang`은 다음과 같은 table들로 이루어진다.

| Tables\_in\_madang |
| :----------------- |
| Book               |
| Customer           |
| Imported\_Book     |
| Orders             |



이를 하나씩 살펴보면 다음과 같다.  


#### Book

> 도서 ID, 도서명, 출판사, 가격 정보를 담고 있는 **도서** table이다.

| bookid | bookname          | publisher  | price |
| :----- | :---------------- | :--------- | :---- |
| 1      | 축구의 역사       | 굿스포츠   | 7000  |
| 2      | 축구아는 여자     | 나무수     | 13000 |
| 3      | 축구의 이해       | 대한미디어 | 22000 |
| 4      | 골프 바이블       | 대한미디어 | 35000 |
| 5      | 피겨 교본         | 굿스포츠   | 8000  |
| 6      | 역도 단계별기술   | 굿스포츠   | 6000  |
| 7      | 야구의 추억       | 이상미디어 | 20000 |
| 8      | 야구를 부탁해     | 이상미디어 | 13000 |
| 9      | 올림픽 이야기     | 삼성당     | 7500  |
| 10     | Olympic Champions | Pearson    | 13000 |



#### Customer

> 고객 ID, 고객명, 주소, 전화번호 정보를 담고 있는 **고객** table이다.

| custid | name   | address         | phone         |
| :----- | :----- | :-------------- | :------------ |
| 1      | 박지성 | 영국 맨체스타   | 000-5000-0001 |
| 2      | 김연아 | 대한민국 서울   | 000-6000-0001 |
| 3      | 장미란 | 대한민국 강원도 | 000-7000-0001 |
| 4      | 추신수 | 미국 클리블랜드 | 000-8000-0001 |
| 5      | 박세리 | 대한민국 대전   | NULL          |



#### Imported_Book

> 수입도서의 ID, 도서명, 출판사, 가격 정보를 담고 있는 **수입도서** table이다.

| bookid | bookname      | publisher      | price |
| :----- | :------------ | :------------- | :---- |
| 21     | Zen Golf      | Pearson        | 12000 |
| 22     | Soccer Skills | Human Kinetics | 15000 |



#### Orders

> 주문번호, 고객 ID, 도서 ID, 할인가, 주문일자 정보를 담고 있는 **주문** table이다.

| orderid | custid | bookid | saleprice | orderdate  |
| :------ | :----- | :----- | :-------- | :--------- |
| 1       | 1      | 1      | 6000      | 2014-07-01 |
| 2       | 1      | 3      | 21000     | 2014-07-03 |
| 3       | 2      | 5      | 8000      | 2014-07-03 |
| 4       | 3      | 6      | 6000      | 2014-07-04 |
| 5       | 4      | 7      | 20000     | 2014-07-05 |
| 6       | 1      | 2      | 12000     | 2014-07-07 |
| 7       | 4      | 8      | 13000     | 2014-07-07 |
| 8       | 3      | 10     | 12000     | 2014-07-08 |
| 9       | 2      | 10     | 7000      | 2014-07-09 |
| 10      | 3      | 8      | 13000     | 2014-07-10 |



위의 example database를 바탕으로 다양한 query를 설계하며 MySQL을 학습하고자 한다.

학습 순서는 다음과 같다.



### Ch.01 Database System





### Ch.02 Relational Data Model





### Ch.03 Basic SQL





### Ch.04 Advanced SQL





### Ch.05 Database Programming





### Ch.06 Data Modeling





### Ch.07 Normalization





### Ch.08 Transaction, Currency Control, Recovery