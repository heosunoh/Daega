create table ProfessorComment(
professor_num number not null,
professorcomment_num number PRIMARY KEY,
professorcomment_writer varchar2(20) not null,
professorcomment_date timestamp not null,
professorcomment_content varchar2(500) not null,
professorcomment_mark number not null,
userinfo_id varchar2(20) not null
);  -- ProfessorComment �÷� ����

ALTER TABLE professorcomment
ADD CONSTRAINTS FK_professor_cm_professor_num FOREIGN KEY (PROFESSOR_NUM)
REFERENCES PROFESSOR(PROFESSOR_NUM) -- professorcomment �ȿ� professor_num �ܷ�Ű ���� 

ALTER TABLE professorcomment
ADD CONSTRAINTS FK_professor_cm_userinfo_id FOREIGN KEY (USERINFO_ID)
REFERENCES USERINFO(USERINFO_ID) -- professorcomment �ȿ� userinfo_id �ܷ�Ű ���� 

CREATE SEQUENCE professorcomment_seq