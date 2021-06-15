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

DROP TABLE member;
SELECT * FROM member;


