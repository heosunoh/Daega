create table CommunityComment(
community_num NUMBER NOT NULL,
communitycomment_num NUMBER primary key, 
communitycomment_writer VARCHAR2(20) NOT NULL,
communitycomment_date TIMESTAMP NOT NULL,
communitycomment_content VARCHAR2(100) NOT NULL,
userinfo_id VARCHAR2(20) NOT NULL
); 	-- communityComment 컬럼 생성

ALTER TABLE CommunityComment
ADD CONSTRAINTS CommunityComment_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID)	-- CommunityComment 안에 userinfo_id 외래키 생성

ADD CONSTRAINTS CommunityComment_community_num FOREIGN KEY (community_num) 
REFERENCES Community(community_num)	  -- CommunityComment 안에 community_num 외래키 생성
select * from COMMUNITYCOMMENT WHERE community_num = 1 ORDER BY community_num DESC
CREATE SEQUENCE communitycomment_seq
DROP TABLE CommunityComment
DELETE COMMUNITYCOMMENT WHERE COMMUNITYCOMMENT_NUM=3
INSERT INTO COMMUNITYCOMMENT VALUES(1,1,'김민규', SYSDATE,'내용','aaa');
INSERT INTO COMMUNITYCOMMENT VALUES(1,2,'김민규', SYSDATE,'내용1','aaa');
INSERT INTO COMMUNITYCOMMENT VALUES(1,3,'김민규', SYSDATE,'내용2','aaa');

select * from COMMUNITYCOMMENT WHERE community_num = '1' ORDER BY community_num DESC