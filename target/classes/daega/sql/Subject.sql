create table Subject(
subject_num number primary key,
subject_name varchar2(30) not null,
subject_writer varchar2(20) not null,
subject_content varchar2(500) not null,
subject_password varchar2(20) not null,  
professor_num number not null,
userinfo_id varchar2(20) not null
);  --subject 컬럼 생성

ALTER TABLE subject
ADD CONSTRAINT FK_subject_userinfo_id FOREIGN KEY (userinfo_id)
REFERENCES userinfo(userinfo_id) --subject 안에 userinfo_id 외래키 생성

ALTER TABLE subject
ADD CONSTRAINT FK_subject_professor_num FOREIGN KEY (professor_num)
REFERENCES professor(professor_num) --subject 안에 professor_num 외래키 생성

CREATE SEQUENCE subject_seq


