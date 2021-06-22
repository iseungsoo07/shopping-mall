CREATE TABLE member (
	id varchar(20) primary key, -- ���̵�
	pw varchar(20) not null, -- ��й�ȣ
	name varchar(10) not null, -- �̸�
	phone varchar(15) not null, -- ��ȭ��ȣ
	email varchar(30), -- �̸���
	zipcode int not null, -- �����ȣ (�ּҵ����� api���� �����ȣ�� �����µ� �������������� �����ȣ�� �ҷ����� ����)
	addr varchar(200) not null, -- �ּ�
	rank int default 10, -- ȸ�� ��� (ȸ���̱⸸ �ϸ� 10��� ����. 10���� 1����)
	point int default 0, -- ����Ʈ
	purchase int default 0 -- ���� �ݾ�	
);

create table notice( -- ��������
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
   rid int primary key,   --�亯 id
   qid int not null,      --qna id
   day varchar(30),            --�亯 �Խ�����
   id varchar(20),         --������ id
   rcon varchar(50) not null,   --�亯 ����
   foreign key(id) references member(id),
   constraint fk foreign key (qid) references QnA(qid) on delete cascade
);

create table product(
   pid int primary key, --��ǰ id
   name varchar(30),   --��ǰ�̸�
   price int not null, -- ��ǰ����
   visit int not null,   --��ȸ��
   stock int not null,   --���
   cate varchar(10) not null, --�з� category
   psize varchar(10), --��ǰ������(size�� �Ӽ��� �ָ� �������� �ٲ�)
   pcon varchar(1000), --��ǰ ������ ����
   gender varchar(10), -- ����
   files varchar(50), --�������� 
   day varchar(30) --���ε� ��¥
);

create table productreview(
	reviewid int primary key, -- review id
	productid int, -- ������ product id
	userid varchar(20), --���並 �� ����� id
	productsize varchar(10),
	rating int,	-- ���� 1~5
	reveiwcon varchar(1000),
	day varchar(30),
	constraint fk2 foreign key (productid) references product(pid) on delete cascade
);


INSERT INTO member (id,pw,name,phone,email,zipcode,addr) VALUES ('admin','pw','name','phone','email',123,'addr');
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


DELETE FROM member WHERE id = 'admin';
DELETE FROM NOTICE WHERE nid = 1;
DELETE FROM QnA WHERE qid = 1;
select * from notice
select * from QnA
select * from reply
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
-- �߰��� ���� ������ ���� ��Ź�����

select * from (select nid,ntitle,ncon,visitor,day,sort,rownum as rn from Notice order by nid asc) where rn between 1 and 10



