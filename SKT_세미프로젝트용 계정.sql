drop table community;
drop table course;
drop table festival;
drop table interested;
drop table member;
drop table sub_course;
drop table tourist;
drop table user_comment;

CREATE TABLE MEMBER (
    mem_id VARCHAR2(30) NOT NULL,
    mem_pwd VARCHAR2(30) NULL,
    mem_name VARCHAR2(30) NULL,
    phone VARCHAR2(30) NULL,
    address VARCHAR2(40) NULL,
    mem_no CHAR(14) NULL,
    email VARCHAR2(50) NULL,
    status CHAR(1) DEFAULT 'Y' NULL,
    grade VARCHAR2(255) NULL,
    CONSTRAINT PK_MEMBER PRIMARY KEY (mem_id)
);

CREATE TABLE FESTIVAL (
    fs_no NUMBER NOT NULL,
    fs_name VARCHAR2(100) NULL,
    fs_area VARCHAR2(200) NULL,
    fs_season VARCHAR2(20) NULL,
    fs_tema VARCHAR2(20) NULL,
    fs_date DATE NULL,
    fs_img VARCHAR2(100) NULL,
    fs_url VARCHAR2(200) NULL,
    fs_dct VARCHAR2(300) NULL,
    fs_like NUMBER NULL,
    fs_lat NUMBER(16, 14) NULL,
    fs_long NUMBER(16, 14) NULL,
    CONSTRAINT PK_FESTIVAL PRIMARY KEY (fs_no)
);

CREATE TABLE TOURIST (
    tour_no NUMBER NOT NULL,
    tour_name VARCHAR2(100) NULL,
    tour_area VARCHAR2(200) NULL,
    tour_tema VARCHAR2(20) NULL,
    tour_season VARCHAR2(20) NULL,
    tour_img VARCHAR2(100) NULL,
    tour_thumbnail VARCHAR2(100) NULL,
    tour_like NUMBER NULL,
    tour_lat NUMBER(16, 14) NULL,
    tour_long NUMBER(16, 14) NULL,
    CONSTRAINT PK_TOURIST PRIMARY KEY (tour_no)
);

CREATE TABLE Community (
    comm_no NUMBER NOT NULL,
    mem_id VARCHAR2(30) NOT NULL,
    title VARCHAR2(30) NULL,
    content VARCHAR2(50) NULL,
    view_count NUMBER DEFAULT 0 NULL,
    like_count NUMBER DEFAULT 0 NULL,
    create_date DATE NULL,
    update_date DATE NULL,
    CONSTRAINT PK_COMMUNITY PRIMARY KEY (comm_no)
);

CREATE TABLE user_Comment (
    mem_id VARCHAR2(30) NOT NULL,
    comm_no NUMBER NOT NULL,
    comment_content VARCHAR2(50) NULL,
    comment_date DATE NULL
);

CREATE TABLE sub_Course (
    subcourse_no NUMBER NOT NULL,
    sub_Course NUMBER NOT NULL,
    tour_no NUMBER NULL,
    fs_no NUMBER NULL,
    turn NUMBER(10) NOT NULL,
    CONSTRAINT PK_SUB_COURSE PRIMARY KEY (subcourse_no)
);

CREATE TABLE Course (
    course_no NUMBER NOT NULL,
    course_name VARCHAR2(20) NULL,
    course_area VARCHAR2(20) NULL,
    course_tema VARCHAR2(20) NULL,
    CONSTRAINT PK_COURSE PRIMARY KEY (course_no)
);

CREATE TABLE Interested (
    mem_id VARCHAR2(30) NOT NULL,
    fs_no NUMBER NULL,
    course_no NUMBER NULL,
    tour_no NUMBER NULL,
    CONSTRAINT PK_INTERESTED PRIMARY KEY (mem_id),
    CONSTRAINT FK_MEMBER_TO_INTERESTED FOREIGN KEY (mem_id) REFERENCES MEMBER(mem_id)
);

CREATE TABLE User_Likes (
    comm_no NUMBER NOT NULL,
    mem_id VARCHAR2(30) NOT NULL,
    like_status VARCHAR2(255) NULL
);

CREATE TABLE MY_COURSE (
    mycourse_number NUMBER NOT NULL,
    mem_id VARCHAR2(30) NOT NULL,
    mycourse_name VARCHAR2(30) NULL,
    mycourse_date NUMBER NULL,
    mycourse_turn NUMBER NULL,
    CONSTRAINT PK_MY_COURSE PRIMARY KEY (mycourse_number)
);

-- COMMENT 추가
COMMENT ON COLUMN MEMBER.mem_id IS '아이디';
COMMENT ON COLUMN MEMBER.mem_pwd IS '비밀번호';
COMMENT ON COLUMN MEMBER.mem_name IS '이름';
COMMENT ON COLUMN MEMBER.phone IS '전화번호';
COMMENT ON COLUMN MEMBER.address IS '주소';
COMMENT ON COLUMN MEMBER.mem_no IS '주민등록번호';
COMMENT ON COLUMN MEMBER.email IS '이메일';
COMMENT ON COLUMN MEMBER.status IS '정상:Y, 탈퇴:N';
COMMENT ON COLUMN MEMBER.grade IS '권한';

COMMENT ON COLUMN FESTIVAL.fs_no IS '축제번호';
COMMENT ON COLUMN FESTIVAL.fs_name IS '축제이름';
COMMENT ON COLUMN FESTIVAL.fs_area IS '지역';
COMMENT ON COLUMN FESTIVAL.fs_season IS '계절';
COMMENT ON COLUMN FESTIVAL.fs_tema IS '테마';
COMMENT ON COLUMN FESTIVAL.fs_date IS '기간';
COMMENT ON COLUMN FESTIVAL.fs_img IS '이미지파일';
COMMENT ON COLUMN FESTIVAL.fs_url IS 'url';
COMMENT ON COLUMN FESTIVAL.fs_dct IS '설명';
COMMENT ON COLUMN FESTIVAL.fs_like IS '좋아요';
COMMENT ON COLUMN FESTIVAL.fs_lat IS '축제 위도';
COMMENT ON COLUMN FESTIVAL.fs_long IS '축제 경도';

COMMENT ON COLUMN TOURIST.tour_no IS '관광지번호';
COMMENT ON COLUMN TOURIST.tour_name IS '이름';
COMMENT ON COLUMN TOURIST.tour_area IS '지역';
COMMENT ON COLUMN TOURIST.tour_tema IS '테마';
COMMENT ON COLUMN TOURIST.tour_season IS '계절';
COMMENT ON COLUMN TOURIST.tour_img IS '이미지파일';
COMMENT ON COLUMN TOURIST.tour_thumbnail IS '썸네일이미지';
COMMENT ON COLUMN TOURIST.tour_like IS '좋아요';
COMMENT ON COLUMN TOURIST.tour_lat IS '위도';
COMMENT ON COLUMN TOURIST.tour_long IS '경도';


-- 제약조건 추가

ALTER TABLE Community ADD CONSTRAINT FK_MEMBER_TO_Community FOREIGN KEY (mem_id)
REFERENCES MEMBER (mem_id);

ALTER TABLE user_Comment ADD CONSTRAINT FK_MEMBER_TO_user_Comment FOREIGN KEY (mem_id)
REFERENCES MEMBER (mem_id);

ALTER TABLE user_Comment ADD CONSTRAINT FK_Community_TO_user_Comment FOREIGN KEY (comm_no)
REFERENCES Community (comm_no);

ALTER TABLE sub_Course ADD CONSTRAINT FK_Course_TO_sub_Course FOREIGN KEY (sub_Course)
REFERENCES Course (course_no);

ALTER TABLE sub_Course ADD CONSTRAINT FK_TOURIST_TO_sub_Course FOREIGN KEY (tour_no)
REFERENCES TOURIST (tour_no);

ALTER TABLE sub_Course ADD CONSTRAINT FK_FESTIVAL_TO_sub_Course FOREIGN KEY (fs_no)
REFERENCES FESTIVAL (fs_no);

ALTER TABLE Interested ADD CONSTRAINT FK_FESTIVAL_TO_Interested FOREIGN KEY (fs_no)
REFERENCES FESTIVAL (fs_no);

ALTER TABLE Interested ADD CONSTRAINT FK_Course_TO_Interested FOREIGN KEY (course_no)
REFERENCES Course (course_no);

ALTER TABLE Interested ADD CONSTRAINT FK_TOURIST_TO_Interested FOREIGN KEY (tour_no)
REFERENCES TOURIST (tour_no);

ALTER TABLE USER_LIKES ADD CONSTRAINT FK_Community_TO_LIKE FOREIGN KEY (comm_no)
REFERENCES Community (comm_no);

ALTER TABLE USER_LIKES ADD CONSTRAINT FK_MEMBER_TO_LIKE FOREIGN KEY (mem_id)
REFERENCES MEMBER (mem_id);

ALTER TABLE MY_COURSE ADD CONSTRAINT FK_MEMBER_TO_MY_COURSE FOREIGN KEY (mem_id)
REFERENCES MEMBER (mem_id);

ALTER TABLE FESTIVAL
DROP COLUMN FS_DATE;

ALTER TABLE FESTIVAL
ADD (
    FS_START DATE,
    FS_END DATE
);

ALTER TABLE FESTIVAL
MODIFY FS_LONG NUMBER(16, 13);

ALTER TABLE TOURIST
MODIFY TOUR_LONG NUMBER(16, 13);

ALTER TABLE FESTIVAL
MODIFY FS_DCT VARCHAR2(1000);

ALTER TABLE SUB_COURSE
RENAME COLUMN SUB_COURSE TO course_no;

ALTER TABLE COURSE
MODIFY COURSE_NAME VARCHAR2(50);
-- 이거먼저

INSERT INTO  MEMBER (MEM_ID, MEM_PWD, MEM_NAME, PHONE, ADDRESS, MEM_NO, EMAIL, STATUS, GRADE)
VALUES ('user01', 'pass01', '홍길동', '010-1234-5678', '서울특별시 예시구 예시동 1-1', '123456-1234567', 'user01@example.com', 'Y', '회원');

commit;