
--레스토랑별 푸드타입 테이블 & 시퀀스
CREATE SEQUENCE  loc_code_per_rest_seq  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 noCACHE NOORDER  NOCYCLE ;

create table loc_code_per_rest 
(
loc_code_seq number primary key,
rest_seq number,
loc_code number
);
--                                                             레스토랑, 지역코드
insert into loc_code_per_rest values (loc_code_per_rest_seq.nextval, 1, 1);
insert into loc_code_per_rest values (loc_code_per_rest_seq.nextval, 1, 2);
insert into loc_code_per_rest values (loc_code_per_rest_seq.nextval, 1, 3);
insert into loc_code_per_rest values (loc_code_per_rest_seq.nextval, 2, 1);
insert into loc_code_per_rest values (loc_code_per_rest_seq.nextval, 2, 2);
commit;
--지역코드 중복 검색쿼리 
select distinct a.* from p_restaurant a join loc_code_per_rest b on a.rest_seq = b.rest_seq where loc_code in (1,2)
                                        join food_code_per_rest


--레스토랑별 푸드타입 테이블 & 시퀀스
CREATE SEQUENCE  food_code_per_rest_seq  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 noCACHE NOORDER  NOCYCLE ;

create table food_code_per_rest 
(
food_code_seq number primary key,
rest_seq number,
food_code number
);


--검색쿼리 베타
select distinct a.* from p_restaurant a 
inner join loc_code_per_rest b on a.rest_seq = b.rest_seq 
inner join food_code_per_rest c on a.rest_seq = c.rest_seq 
where food_code in (1,2) 
  and loc_code in (1,2) 
  and a.rest_line_exp like '%rest a%'
  and rest_name like '%레스토랑%';

