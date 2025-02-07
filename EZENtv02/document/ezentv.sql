drop database ezentv;

create database ezentv;

use ezentv;

drop table wishlist;
drop table review;
drop table actor;
drop table contents;
drop table user;

create table user
(
	user_no int auto_increment primary key comment '회원번호',
	id varchar(50) comment '회원아이디',
	pw varchar(100) comment '비밀번호',
	nickname varchar(50) comment '닉네임',
	name varchar(50) comment '이름',
	email varchar(100) comment '이메일',
	joindate datetime default now() comment '가입일자',
	isretire varchar(2) default 'N' comment '탈퇴여부',
	manager_yn varchar(2) default 'N' comment '관리자여부'
)comment '회원정보';

create table contents
(
	contents_no  int auto_increment primary key comment '컨텐츠번호',
	thumfile_phyname varchar(100) comment '썸네일_첨부파일_논리명',
	thumfile_fname varchar(100) comment '썸네일_첨부파일_물리명',
	tralier_link varchar(500) comment '예고편',
	title varchar(50) comment '제목',
	opendate datetime comment '출시일',
	screen_info varchar(10) comment '상영정보',
	running_time varchar(50) comment '상영시간',
	nation varchar(10) comment '국가',
	story varchar(100) comment '줄거리',
	grade varchar(10) comment '등급',
	genre varchar(10) comment '장르',
	OTTaddr_neflix varchar(100) comment 'OTT주소_넷플릭스',
	OTTaddr_disney varchar(100) comment 'OTT주소_디즈니',
	OTTaddr_coupang varchar(100) comment 'OTT주소_쿠팡',
	OTTaddr_watcha varchar(100) comment 'OTT주소_왓챠',
	uploaddate datetime default now() comment '업로드일자'
)comment '컨텐츠';


create table wishlist
(
 	user_no int auto_increment primary key comment '회원번호',
	wishdate datetime default now() comment '찜일자',
	cno  int comment '컨텐츠번호',
	foreign key (cno) references contents(contents_no),
	foreign key (user_no) references user(user_no)
 ) comment '찜목록';


create table review
(
	rno integer primary key comment '리뷰번호',
	rating integer comment '컨텐츠번호',
	user_no integer  comment '회원번호',
	contents_no integer comment '별점',
	rnote varchar(100) comment '내용',
	rdate datetime default now() comment '작성일',
	report_yn varchar(2) comment '신고여부',
	repordatet datetime default now() comment '신고일자',
	reporter varchar(50)  comment '신고자_아이디',
	foreign key (rating) references contents(contents_no),
	foreign key (user_no) references user(user_no)
) comment '리뷰';


create table actor
(
	ano int auto_increment primary key comment '출연진번호',
	cno  int comment '컨텐츠번호',
	aname varchar(50) comment '출연진이름',
	ano_file_fname varchar(100) comment '출연진사진 논리명',
	ano_file_phyname varchar(100) comment '출연진사진 물리명',
	foreign key (cno) references contents(contents_no)
) comment '출연진';


