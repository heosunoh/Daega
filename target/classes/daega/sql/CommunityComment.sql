create table CommunityComment(
community_num NUMBER NOT NULL,
communitycomment_num NUMBER primary key, 
communitycomment_writer VARCHAR2(20) NOT NULL,
communitycomment_date TIMESTAMP NOT NULL,
communitycomment_content VARCHAR2(100) NOT NULL,
userinfo_id VARCHAR2(20) NOT NULL
); 	-- communityComment �÷� ����

ALTER TABLE CommunityComment
ADD CONSTRAINTS CommunityComment_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID)	-- CommunityComment �ȿ� userinfo_id �ܷ�Ű ����

ADD CONSTRAINTS CommunityComment_community_num FOREIGN KEY (community_num) 
REFERENCES Community(community_num)	  -- CommunityComment �ȿ� community_num �ܷ�Ű ����
select * from COMMUNITYCOMMENT WHERE community_num = 1 ORDER BY community_num DESC
CREATE SEQUENCE communitycomment_seq
DROP TABLE CommunityComment
DELETE COMMUNITYCOMMENT WHERE COMMUNITYCOMMENT_NUM=3
INSERT INTO COMMUNITYCOMMENT VALUES(1,1,'��α�', SYSDATE,'����','aaa');
INSERT INTO COMMUNITYCOMMENT VALUES(1,2,'��α�', SYSDATE,'����1','aaa');
INSERT INTO COMMUNITYCOMMENT VALUES(1,3,'��α�', SYSDATE,'����2','aaa');

select * from COMMUNITYCOMMENT WHERE community_num = '1' ORDER BY community_num DESC