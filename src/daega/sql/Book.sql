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
); -- book �÷� ����

ALTER TABLE Book
ADD CONSTRAINTS Book_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID) -- book �ȿ� userinfo_id �ܷ�Ű ����
CREATE SEQUENCE book_seq