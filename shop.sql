CREATE TABLE member (
	id varchar(20) primary key, -- 아이디
	pw varchar(20) not null, -- 비밀번호
	name varchar(10) not null, -- 이름
	phone varchar(15) not null, -- 전화번호
	email varchar(30), -- 이메일
	zipcode int not null, -- 우편번호 (주소따오는 api에서 우편번호가 나오는데 마이페이지에서 우편번호를 불러오기 위함)
	addr varchar(200) not null, -- 주소
	rank int default 10, -- 회원 등급 (회원이기만 하면 10등급 시작. 10부터 1까지)
	point int default 0, -- 포인트
	purchase int default 0 -- 구매 금액
);

create table notice( -- 공지사항
	nid int  primary key, 	
	ntitle varchar (20), 			
	ncon varchar(100) not null, 		
	visitor int not null, 			
	day varchar(30)  not null, 	
	sort varchar(20) 			
);

create table QnA ( 				
	qid int primary key,	
	id varchar(20) not null, 		
	qcon varchar(100) not null, 		
	qstate varchar(10) not null, 
	day varchar(30) not null, 		
	foreign key(id) references member(id), 	
	sort varchar(20) 			
);

create table reply( 
	rid int primary key, 	
	qid int not null, 		
	date varchar(30) not null, 		
	rcon varchar(50) not null, 		
	constraint foreign key (qid) references QnA(qid) on delete cascade						
);

INSERT into notice (nid,ntitle,ncon,visitor,day,sort) values (3,'asd','asdd',155,'1234','qnsfb')
DROP TABLE member;
SELECT * FROM member;
DELETE FROM member WHERE id = 'admin';
select * from notice

