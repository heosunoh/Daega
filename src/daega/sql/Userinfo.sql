create table Userinfo(
userinfo_id varchar2(20) PRIMARY KEY,
userinfo_password varchar2(30) not null,
userinfo_name varchar2(20) not null,
userinfo_nickname varchar2(20) not null,
userinfo_email varchar2(30) not null,
userinfo_grade number not null, 
userinfo_auth varchar2(10) not null
);  -- userinfo �÷� ����

INSERT INTO USERINFO values('aaa', '111', '��α�', '��α�', 'aaa@aaa.com', 1, 'user')

CREATE SEQUENCE userinfo_seq