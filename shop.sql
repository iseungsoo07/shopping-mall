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
   nid int primary key,    
   ntitle varchar (20),          
   ncon varchar(100) not null,       
   visitor int default 0,          
   day varchar(30)  not null,    
   sort varchar(20)          
);

create table QnA (             
   qid int primary key,   
   id varchar(20),
   qtitle varchar(20) not null,
   qcon varchar(100) not null,       
   qstate varchar(20),
   qstatenum int default 0,
   day varchar(30),       
   sort varchar(20),    
   foreign key(id) references member(id)
);

create table reply(

   rid int primary key,   --답변 id
   qid int not null,      --qna id
   day varchar(30),            --답변 게시일자
   id varchar(20),         --관리자 id
   rcon varchar(50) not null,   --답변 내용

   foreign key(id) references member(id),
   constraint fk foreign key (qid) references QnA(qid) on delete cascade
);

create table product(
   pid int primary key, --상품 id
   name varchar(30),   --상품이름
   price int not null, -- 상품가격
   visit int not null,   --조회수
   cate varchar(10) not null, --분류 category
   ssize int default 0, --상품사이즈(size로 속성을 주면 에러나서 바꿈)
   msize int default 0,
   lsize int default 0,
   xlsize int default 0,
   xxlsize int default 0,
   pcon varchar(1000), --상품 디테일 내용
   gender varchar(10), -- 성별
   files varchar(50), --사진파일 
   day varchar(30) --업로드 날짜
);

create table productreview(
	reviewid int primary key, -- review id
	productid int not null, -- 리뷰한 product id
	userid varchar(20), --리뷰를 쓴 사용자 id
	productsize varchar(10),
	rating int,	-- 평점 1~5
	reviewcon varchar(1000),
	day varchar(30),
	foreign key(userid) references member(id),
	constraint fk2 foreign key (productid) references product(pid) on delete cascade
);

create table cart(
	cid int primary key, --장바구니 번호
	id varchar(20), --사용자 아이디
	pid int, 	--상품번호
	name varchar(30), --상품이름
	count int, -- 주문 상품갯수
	day varchar(20), --장바구니 넣은 날짜
	files varchar(50), 
	price int, --상품금액
	total int, --총금액
	deli int,
	pay int,
	discount int,
	foreign key(id) references member(id),
	constraint fk3 foreign key(pid) references product(pid) on delete cascade
);
drop table product;
drop table cart;
INSERT INTO MEMBER (id,pw,name,phone,email,zipcode,addr,rank,point,purchase) VALUES ('ab','pw','name','phone','email',123,'addr',1,100,1000000)



INSERT INTO QnA (qid,id,qtitle,qcon,qstate,day,sort) values (100,'a','title','con','state','day','sort')

update member set purchase = 100000 where id = 'admin';

DELETE FROM member WHERE id = 'admin';
DELETE FROM NOTICE WHERE nid = 1;
DELETE FROM QnA WHERE qid = 1;
select * from member;
select * from notice
select * from QnA
select * from reply
select * from product
select * from cart
select * from PRODUCTREVIEW
drop table notice;
drop table reply;
drop table QnA;
drop table member;
drop table product;
drop table productreview;
select * from QnA;
select * from Notice where ncon like '%as%'

select * from reply where qid = 4;
CREATE SEQUENCE cnt START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE SEQUENCE cnt2 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE SEQUENCE cnt3 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE SEQUENCE cnt4 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

select * from (select nid,ntitle,ncon,visitor,day,sort,rownum as rn from Notice order by nid asc) where rn between 1 and 10;
delete from PRODUCT where pid = 8;

SELECT * FROM (SELECT A.*, ROWNUM AS RNUM FROM (SELECT * FROM notice ORDER BY nid DESC) A WHERE ROWNUM <= 5) WHERE RNUM > 0 ORDER BY nid DESC;