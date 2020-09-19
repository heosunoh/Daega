create table StudyComment (
study_num NUMBER NOT NULL,
studycomment_num NUMBER primary key,
studycomment_writer VARCHAR2(20) NOT NULL,
studycomment_date TIMESTAMP NOT NULL,
studycomment_content VARCHAR2(100) NOT NULL,
userinfo_id VARCHAR2(20) NOT NULL
);  -- StudyComment 컬럼 생성


ALTER TABLE StudyComment
ADD CONSTRAINTS StudyComment_USERINFO_ID FOREIGN KEY (USERINFO_ID) 
REFERENCES USERINFO(USERINFO_ID)	-- StudyComment 안에 userinfo_id 외래키 생성

ADD CONSTRAINTS StudyComment_study_num FOREIGN KEY (study_num) 
REFERENCES Study(study_num)	  -- StudyComment 안에 study_num 외래키 생성
CREATE SEQUENCE studycomment_seq