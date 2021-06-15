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
	ntitle varchar (50), 			
	ncon varchar(1000) not null, 		
	visitor int default 0, 			
	day varchar(30)  not null, 	
	sort varchar(20) 			
);

create table QnA ( 				
	qid int primary key,	
	id varchar(20),
	qtitle varchar(50) not null,
	qcon varchar(1000) not null, 		
	qstate varchar(20),
	qstatenum int default 0,
	day varchar(30), 		
	sort varchar(20), 	
	foreign key(id) references member(id)
);

create table reply( 
	rid int primary key, 	
	qid int not null, 		
	date varchar(30), 		
	rcon varchar(500) not null, 		
	CONSTRAINT fk FOREIGN KEY(qid)
	REFERENCES QnA(qid) ON DELETE CASCADE						
);
create table reply(
   rid int primary key,   --답변 id
   qid int not null,      --qna id
   day varchar(30),            --답변 게시일자
   id varchar(20),         --관리자 id
   rcon varchar(500) not null,   --답변 내용
   foreign key(id) references member(id),
   constraint fk foreign key (qid) references QnA(qid) on delete cascade
);


INSERT INTO MEMBER (id,pw,name,phone,email,zipcode,addr,rank,point,purchase) VALUES ('a','pw','name','phone','email',123,'addr',1,100,1000)
INSERT into notice (nid,ntitle,ncon,visitor,day,sort) values (3,'asd','asdd',155,'1234','qnsfb')
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (100,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (101,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (102,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (103,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (104,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (105,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (106,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (107,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (108,'asddd','asdd',155,'1234','qnsfb');
INSERT into notice (nid,ntitle,ncon, visitor,day,sort) values (109,'asddd','asdd',155,'1234','qnsfb');
INSERT INTO QnA (qid,id,qtitle,qcon,qstate,day,sort) values (100,'a','title','con','state','day','sort')

DROP TABLE member;
SELECT * FROM member;
DELETE FROM member WHERE id = 'admin';
DELETE FROM NOTICE WHERE nid = 1;
DELETE FROM QnA WHERE qid = 1;
select * from notice
select * from QnA
select * from reply
drop table notice;
drop table reply;
drop table QnA;

select * from Notice where ncon like '%as%'

select * from reply where qid = 4;
CREATE SEQUENCE cnt START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE SEQUENCE cnt2 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE SEQUENCE cnt3 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

select * from (select nid,ntitle,ncon,visitor,day,sort,rownum as rn from Notice order by nid asc) where rn between 1 and 10

drop sequence cnt3