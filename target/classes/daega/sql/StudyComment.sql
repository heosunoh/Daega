create table StudyComment (
study_num NUMBER NOT NULL,
studycomment_num NUMBER primary key,
studycomment_writer VARCHAR2(20) NOT NULL,
studycomment_date TIMESTAMP NOT NULL,
studycomment_content VARCHAR2(100) NOT NULL,
userinfo_id VARCHAR2(20) NOT NULL
);  -- StudyComment �÷� ����


ALTER TABLE StudyComment
ADD CONSTRAINTS StudyComment_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID)	-- StudyComment �ȿ� userinfo_id �ܷ�Ű ����

ADD CONSTRAINTS StudyComment_study_num FOREIGN KEY (study_num) 
REFERENCES Study(study_num)	  -- StudyComment �ȿ� study_num �ܷ�Ű ����
CREATE SEQUENCE studycomment_seq