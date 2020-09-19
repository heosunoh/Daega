create table ProfessorComment(
professor_num number not null,
professorcomment_num number PRIMARY KEY,
professorcomment_writer varchar2(20) not null,
professorcomment_date timestamp not null,
professorcomment_content varchar2(500) not null,
professorcomment_mark number not null,
userinfo_id varchar2(20) not null
);  -- ProfessorComment 컬럼 생성

ALTER TABLE professorcomment
ADD CONSTRAINTS FK_professor_cm_professor_num FOREIGN KEY (PROFESSOR_NUM)
REFERENCES PROFESSOR(PROFESSOR_NUM) -- professorcomment 안에 professor_num 외래키 생성 

ALTER TABLE professorcomment
ADD CONSTRAINTS FK_professor_cm_userinfo_id FOREIGN KEY (USERINFO_ID)
REFERENCES USERINFO(USERINFO_ID) -- professorcomment 안에 userinfo_id 외래키 생성 

CREATE SEQUENCE professorcomment_seq