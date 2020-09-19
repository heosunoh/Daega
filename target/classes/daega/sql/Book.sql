create table Book(
book_num NUMBER primary key,
book_name VARCHAR2(20) NOT NULL,
book_publish DATE NOT NULL,
book_subject VARCHAR2(40)  NOT NULL,
book_price NUMBER NOT NULL,
book_cost NUMBER NOT NULL,
book_select VARCHAR2(20) NOT NULL,
book_content VARCHAR2(100) NOT NULL,
book_date TIMESTAMP NOT NULL,
book_password VARCHAR2(40) NOT NULL,
book_writer VARCHAR2(20) NOT NULL,
userinfo_id VARCHAR2(20) NOT NULL
); -- book 컬럼 생성

ALTER TABLE Book
ADD CONSTRAINTS Book_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID) -- book 안에 userinfo_id 외래키 생성
CREATE SEQUENCE book_seq