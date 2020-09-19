create table BookComment(
book_num NUMBER NOT NULL,
bookcomment_num NUMBER primary key,
bookcomment_writer VARCHAR2(20) NOT NULL,
bookcomment_date TIMESTAMP  NOT NULL,
bookcomment_content VARCHAR2(100) NOT NULL,
userinfo_id VARCHAR2(20) NOT NULL
);

ALTER TABLE BookComment
ADD CONSTRAINTS BookComment_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID) -- Bookcomment 안에 userinfo_id 외래키 생성

ADD CONSTRAINTS BookComment_study_num FOREIGN KEY (book_num) 
REFERENCES book(book_num)  -- BookComment 안에 book_num 외래키 생성
CREATE SEQUENCE bookcomment_seq
DROP TABLE bookcomment