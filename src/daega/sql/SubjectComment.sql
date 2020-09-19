create table SubjectComment(
subjectcomment_num number primary key,
subjectcomment_writer varchar2(30) not null,
subjectcomment_date timestamp not null,
subjectcomment_content varchar2(500) not null,
subjectcomment_mark number not null,
userinfo_id varchar2(20) not null,
professor_num number not null,
subject_num number not null
);  -- subjectcomment �÷� ����

ALTER TABLE subjectcomment
ADD CONSTRAINT FK_subject_cm_professor_num FOREIGN KEY (professor_num)
REFERENCES professor(professor_num) -- subjectcomment �ȿ� professor_num �ܷ�Ű ����

ALTER TABLE subjectcomment
ADD CONSTRAINT FK_subject_cm_subject_num FOREIGN KEY (subject_num)
REFERENCES subject(subject_num)  -- subjectcomment �ȿ� subject_num �ܷ�Ű ����

ALTER TABLE subjectcomment
ADD CONSTRAINT FK_subject_cm_userinfo_id FOREIGN KEY (userinfo_id)
REFERENCES userinfo(userinfo_id)  -- subjectcomment �ȿ� userinfo_id �ܷ�Ű ����
CREATE SEQUENCE subjectcomment_seq