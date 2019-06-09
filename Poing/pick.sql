찜 시퀀스
create sequence pick_seq
increment by 1
start with 1
nocycle
nocache;


프로덕트 찜 인서트
insert into pick (pick_seq, m_no, tic_no) values ( pick_seq.nextval , 0,0 );

프로덕트 찜 조회
select count(*) cnt from (select * from pick where m_no = 0 and tic_no = 0); 