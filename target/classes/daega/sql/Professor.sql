create table Professor(
professor_name varchar2(20) not null,
professor_num number primary key,
professor_subject varchar2(20) not null,
professor_writer varchar2(20) not null,
professor_content varchar2(500) not null,
professor_password varchar2(30) not null,
userinfo_id varchar2(20) not null  --professor �÷� ����
);

ALTER TABLE Professor
ADD CONSTRAINTS FK_professor_userinfo_id FOREIGN KEY (USERINFO_ID)
REFERENCES USERINFO(USERINFO_ID) -- professor �ȿ� userinfo_id �ܷ�Ű ����

CREATE SEQUENCE professor_seq