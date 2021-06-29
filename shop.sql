CREATE TABLE member (
	id varchar(20) primary key,
	pw varchar(20) not null,
	name varchar(10) not null, 
	phone varchar(15) not null,
	email varchar(30), 
	zipcode int not null,
	addr varchar(200) not null,
	rank int default 10,
	point int default 0, 
	purchase int default 0
);

create table notice(
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

   rid int primary key,
   qid int not null,   
   day varchar(30),       
   id varchar(20),    
   rcon varchar(50) not null,  

   foreign key(id) references member(id),
   constraint fk foreign key (qid) references QnA(qid) on delete cascade
);

create table product(
   pid int primary key,
   name varchar(30),
   price int not null,
   visit int not null,  
   cate varchar(10) not null, 
   ssize int default 0, 
   msize int default 0,
   lsize int default 0,
   xlsize int default 0,
   xxlsize int default 0,
   pcon varchar(1000), 
   gender varchar(10),
   files varchar(50),
   day varchar(30) 
);

create table productreview(
	reviewid int primary key, -- review id
	productid int not null, 
	userid varchar(20), 
	productsize varchar(10),
	rating int,	
	reviewcon varchar(1000),
	day varchar(30),
	foreign key(userid) references member(id),
	constraint fk2 foreign key (productid) references product(pid) on delete cascade
);

create table cart(
	cid int primary key,
	id varchar(20),
	pid int, 	
	name varchar(30),
	count int,
	psize varchar(10),
	day varchar(20), 
	files varchar(50), 
	price int,
	total int,
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
INSERT INTO member (id, pw, name, phone, email, zipcode, addr, rank ,point, purchase) values ('seungsoo', '1234', '송승수', '01012341234', 'asdf@asdf.com', 12345, 'asdfasdfasdfa', 5, 900, 0);
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

delete from cart WHERE cid = 2;
CREATE SEQUENCE cnt START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE SEQUENCE cnt2 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE SEQUENCE cnt3 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

CREATE SEQUENCE cnt4 START WITH 1 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

select * from (select nid,ntitle,ncon,visitor,day,sort,rownum as rn from Notice order by nid asc) where rn between 1 and 10;
delete from PRODUCT where pid = 8;

SELECT * FROM (SELECT A.*, ROWNUM AS RNUM FROM (SELECT * FROM notice ORDER BY nid DESC) A WHERE ROWNUM <= 5) WHERE RNUM > 0 ORDER BY nid DESC;