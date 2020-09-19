create table Study(
study_num NUMBER primary key,
study_name VARCHAR2(20) NOT NULL,
study_content VARCHAR2(100) NOT NULL,
study_writer VARCHAR2(40) NOT NULL,
study_people NUMBER NOT NULL,
study_subject VARCHAR2(40) NOT NULL,
study_password VARCHAR2(40) NOT NULL,
study_date DATE NOT NULL,
userinfo_id VARCHAR2(20) NOT NULL
);	-- Study 컬럼 생성

ALTER TABLE Study
ADD CONSTRAINTS Study_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID)  -- Study 안에 userinfo_id 외래키 생성
CREATE SEQUENCE study_seq