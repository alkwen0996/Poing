레스토랑 예약 시퀀스
create sequence rest_reserve_seq
increment by 1
start with 1
nocycle
nocache;

레스토랑 예약 인서트 쿼리
insert into rest_reserve values ( rest_reserve_seq.nextval , '2019/05/31' , '11:00' , '서순호', '창가쪽으로 부탁합니다', 1, 100022, 1,3 );

레스토랑 예약 조회
select * from rest_reserve a join p_restaurant b on a.rest_no = b.rest_seq where a.m_num =100022;