create table Userinfo(
userinfo_id varchar2(20) PRIMARY KEY,
userinfo_password varchar2(30) not null,
userinfo_name varchar2(20) not null,
userinfo_nickname varchar2(20) not null,
userinfo_email varchar2(30) not null,
userinfo_grade number not null, 
userinfo_auth varchar2(10) not null
);  -- userinfo ÄÃ·³ »ý¼º

INSERT INTO USERINFO values('aaa', '111', '±è¹Î±Ô', '±è¹Î±Ô', 'aaa@aaa.com', 1, 'user')

CREATE SEQUENCE userinfo_seq