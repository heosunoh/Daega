create table Community(
community_num NUMBER primary key,
community_writer VARCHAR2(40) not null,
community_subject VARCHAR2(40) not null,
community_date TIMESTAMP not null,
community_readcount NUMBER null,
community_select VARCHAR2(40) not null,
community_content VARCHAR2(40) not null,
community_password VARCHAR2(40) not null,
userinfo_id varchar2(20) not null
);	-- community 컬럼 생성
ALTER TABLE Community RENAME COLUMN user_community_password TO community_password;

ALTER TABLE COMMUNITY
ADD CONSTRAINTS COMMUNITY_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID) -- commmunity 안에 userinfo_id 외래키 생성

UPDATE community SET community_subject = '111a', community_date = SYSDATE, community_content = '111a'
WHERE community_num = 1;

SELECT COUNT(*) FROM community WHERE userinfo_id = 'aaa' AND community_password = '111'
SELECT COUNT(*) FROM community WHERE community_num = '1' AND community_password = '111'

CREATE SEQUENCE community_seq
select * from (
  	select rownum rn, community_num, community_writer, community_subject, community_date, 
  	community_readcount, community_select, community_content, community_password, userinfo_id 
  	from community where rownum <= 20) 
  	
SELECT * FROM community ORDER BY community_num DESC
INSERT INTO community values(community_seq.nextval,'aaa','제목',CURRENT_TIMESTAMP,0,'질문','내용','111',
		(SELECT userinfo_id FROM USERINFO WHERE userinfo_nickname='aaa'))
		