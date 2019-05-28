
SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;

CREATE TABLE follow (
	follow_seq NUMBER NOT NULL, /* 팔로우seq */
	follower_seq NUMBER, /* 팔로잉 */
	following_seq NUMBER /* 팔로워 */
);

ALTER TABLE follow
	ADD
		CONSTRAINT PK_follow
		PRIMARY KEY (
			follow_seq
		);

/* 회원 */
CREATE TABLE member (
	m_no NUMBER NOT NULL, /* 회원번호 */
	m_name VARCHAR2(20), /* 회원이름 */
	m_tel VARCHAR2(15), /* 전화번호 */
	m_birth DATE, /* 생일 */
	m_gen NUMBER, /* 성별 */
	m_level NUMBER, /* 레벨 */
	m_selfintro VARCHAR2(300), /* 자기소개 */
	m_email VARCHAR2(30), /* 이메일 */
	m_pw VARCHAR2(100), /* 비밀번호 */
	m_nickname VARCHAR2(50), /* 예약자명 */
	m_img VARCHAR(200), /* 프로필이미지 */
	rp_seq NUMBER /* 레드포인트seq */
);

Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (611090,'jy','010-7558-7558',to_date('93/05/23','RR/MM/DD'),1,1,'무난하지만 쉽게 만족하지 못하는 초딩 입맛.','ncwgynjvxy@blrskgsmem.com','sahprtecmp1340','jy','http://c4.poing.co.kr/565ae28ad820b950980004c1.jpg',15000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (236031,'이수진','010-9397-9397',to_date('84/04/27','RR/MM/DD'),0,8,'null','wslzvmtbmd@hhafflxmul.com','hgaylpayib493','이수진','http://c4.poing.co.kr/MjAxODA5/15368186905b99fe027771f.jpeg',9000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (365142,'ChloeWooJooShim','010-4868-4868',to_date('93/05/03','RR/MM/DD'),1,5,'null','bojmpeiarx@lznwcwkqmw.com','sezcceiiju1971','ChloeWooJooShim','http://c4.poing.co.kr/546d9d4ad20c787997000393.jpg',18000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (558289,'DDD','010-1290-1290',to_date('88/09/24','RR/MM/DD'),1,1,'null','pwusmcujcl@ovfeeqkivl.com','medcwagbuw1753','DDD','http://c4.poing.co.kr/MjAxNzA2/1496991523593a4723496f2.jpeg',2000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (367717,'진진','010-6460-6460',to_date('95/11/06','RR/MM/DD'),1,7,'null','vwikhyunee@cfauzftepj.com','mizgltigsy1282','진진','http://c4.poing.co.kr/MjAxNzA1/14945434565914ec6079334.jpeg',5000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (657520,'최성원','010-9148-9148',to_date('86/03/13','RR/MM/DD'),0,1,'null','nbzxszytbw@izpjpbuqka.com','lqjprbbqgh1681','최성원','http://c1.poing.co.kr/original/images/user/user_base.png',7000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (436575,'이라현','010-5688-5688',to_date('89/06/03','RR/MM/DD'),1,4,'null','ubtjuqjeur@ewdojltpnp.com','knerhsevkc1936','이라현','http://c1.poing.co.kr/original/images/user/user_base.png',1000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (676100,'Ellie Han','010-7038-7038',to_date('89/09/05','RR/MM/DD'),0,6,'null','qiyjarfqjo@ahdppbshaf.com','axbnwqsbga1194','Ellie Han','http://c4.poing.co.kr/56bc02d1d820b90df500005e.jpg',4000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (444828,'Sylvia Park','010-5192-5192',to_date('82/08/14','RR/MM/DD'),1,5,'null','bngmnhlkkm@fobkizekew.com','nbchubczlt1374','Sylvia Park','http://c1.poing.co.kr/original/images/user/user_base.png',9000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (674320,'정병준','010-850-850',to_date('81/04/03','RR/MM/DD'),0,8,'null','unefwhbxxd@sgdthcnkzy.com','wkyhloalap1053','정병준','http://c4.poing.co.kr/5791040a668a486e8300010e.jpg',10000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (62080,'정범진','010-5616-5616',to_date('87/11/15','RR/MM/DD'),1,1,'Bumjin Jung','wfrpudlgsk@igouxcfvph.com','bgwwdqpquq1003','정범진','http://c4.poing.co.kr/546a936dd20c786d78000038.jpg',17000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (650292,'써니데이','010-1899-1899',to_date('92/06/25','RR/MM/DD'),0,1,'인생은 짧고 먹을 것은 많으니까.','iqimulymtt@lxababmxjo.com','ijqnosacox1911','써니데이','http://c4.poing.co.kr/MjAxNjEy/14808279205843a4103e476.jpeg',3000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (519948,'오드리슈','010-1940-1940',to_date('89/03/11','RR/MM/DD'),0,7,'null','trzkaiumim@wcwzidagva.com','ieaoclmivf1622','오드리슈','http://c4.poing.co.kr/5531f343d20c783b420006d6.jpg',18000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (376078,'Guiree Choi','010-9861-9861',to_date('97/01/10','RR/MM/DD'),0,8,'null','kpycrmspke@ujkqjwudqq.com','nygxsfdiuh1013','Guiree Choi','http://c4.poing.co.kr/56f011834332045572000534.jpg',15000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (662526,'H','010-7682-7682',to_date('99/08/23','RR/MM/DD'),0,7,'null','mtbemsbwcq@ksytmmysbe.com','rhhnuzdgum1730','H','http://c4.poing.co.kr/56b4c30ed820b932d90002ba.jpg',2000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (353340,'jj','010-5356-5356',to_date('91/09/13','RR/MM/DD'),1,8,'null','gdwfiodcjx@rkzhsmxhfs.com','ykgqtoumsb1115','jj','http://c4.poing.co.kr/566bb8bed820b96d5d000178.jpg',17000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (374340,'튜니','010-793-793',to_date('83/03/12','RR/MM/DD'),1,5,'null','kekqtyzgwl@femikezrgc.com','ocimwlkzsy706','튜니','http://c4.poing.co.kr/MjAxNzEw/150735364959d86431850b6.jpeg',15000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (454525,'조소현','010-9025-9025',to_date('98/09/07','RR/MM/DD'),0,3,'null','rasjcpsesn@lgdgttfyvx.com','tailffkpyy1976','조소현','http://c4.poing.co.kr/55058452d20c785f7b0007ed.jpg',15000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (647826,'Brad Jonghyun Lee','010-1972-1972',to_date('92/06/02','RR/MM/DD'),1,8,'null','dikglomcmr@vfjpmuodue.com','mclwjpxwkx690','Brad Jonghyun Lee','http://c4.poing.co.kr/56528980d820b9200400002c.jpg',17000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (582100,'Hyein Jeong','010-9745-9745',to_date('97/11/02','RR/MM/DD'),0,6,'null','citjvpuqqt@yiydxakyqb.com','nbrreewalq1964','Hyein Jeong','http://c4.poing.co.kr/55758e4dcdbf5261b800034e.jpg',2000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (573606,'Kaito Shin','010-8804-8804',to_date('90/02/16','RR/MM/DD'),0,8,'null','pemhimqplv@wkafdtgqsm.com','nunwlqdshv1179','Kaito Shin','http://c4.poing.co.kr/546d8150d20c78798b00030c.jpg',3000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (613032,'리아드린','010-3685-3685',to_date('92/06/21','RR/MM/DD'),1,8,'우리가 먹는 것이 곧 우리의 자신이 된다..!','srbtvylaei@eetynqbyol.com','ljnjxlrnew116','리아드린','http://c4.poing.co.kr/5610cd3ed820b91e0f00044b.jpg',16000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (616424,'Solha Park','010-5447-5447',to_date('93/07/18','RR/MM/DD'),0,6,'null','syznzikyco@kkxxmgfhwg.com','sddeqlgbys226','Solha Park','http://c4.poing.co.kr/555b11549f4d6049c2000270.jpg',18000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (658658,'N_K','010-4820-4820',to_date('86/07/03','RR/MM/DD'),0,8,'null','sdcloejdgz@ixmaxjvghv.com','jfhpdphnto1981','N_K','http://c4.poing.co.kr/54a3eae0d20c7824f80009df.jpg',11000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (204603,'송세용','010-1349-1349',to_date('94/10/02','RR/MM/DD'),1,3,'null','vsofqywrsn@hxivjnzzed.com','luhtxjjmyv1142','송세용','http://c1.poing.co.kr/original/images/user/user_base.png',13000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (376506,'꽃하은','010-1549-1549',to_date('95/01/03','RR/MM/DD'),1,8,'@boringstella','elajvxgnac@nmfjcjjamq.com','qrzgbgmchx1218','꽃하은','http://c4.poing.co.kr/MjAxNzAy/1486694080589d26c07ca11.jpeg',9000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (658225,'JB','010-9242-9242',to_date('89/03/16','RR/MM/DD'),1,4,'파인 다이닝을 동경하는 초딩 입맛.','hwxnelafyy@ichxahitig.com','jvmqluipco643','JB','http://c4.poing.co.kr/566ec318d820b9065e00005f.jpg',4000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (651966,'wowon','010-8167-8167',to_date('99/08/13','RR/MM/DD'),0,3,'seoul/paris','kkoojlukzq@satgmczppe.com','twlhwmjovc1870','wowon','http://c4.poing.co.kr/MjAxNzEy/15145465945a4625a219eb2.jpeg',3000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (374545,'홍지은','010-340-340',to_date('86/03/07','RR/MM/DD'),1,7,'null','yfspllbbcc@zadaisoxeq.com','vjbxmonwcv1779','홍지은','http://c4.poing.co.kr/57af1110668a483616000008.jpg',16000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (584283,'김지환','010-5595-5595',to_date('92/09/12','RR/MM/DD'),1,8,'안녕하세요.','pcoasagfty@mepvzdiczy.com','ptjwszmwwf507','김지환','http://c4.poing.co.kr/MjAxNzA1/1496025640592b8a2841eee.jpeg',13000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (617130,'Jamie','010-5101-5101',to_date('00/10/24','RR/MM/DD'),0,1,'배부르다','dgubyekqyu@ihclfpuyil.com','uzjjedicul1009','Jamie','http://c4.poing.co.kr/MjAxNzA0/149187347958ec2ec70651d.png',10000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (374541,'jy','010-7098-7098',to_date('89/11/21','RR/MM/DD'),1,4,'null','dsmzwpkhct@scachgtmsi.com','kabvwjswbn44','jy','http://c1.poing.co.kr/original/images/user/user_base.png',12000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (617772,'봄이언니','010-8709-8709',to_date('86/06/12','RR/MM/DD'),0,7,'맛 없는 거 먹으면 막 화나요','cbjhifgsru@hcjwbcocev.com','jppiqokwqa493','봄이언니','http://c4.poing.co.kr/56fa7c10433204362f0003d0.jpg',2000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (436515,'Naree Hwang','010-6318-6318',to_date('82/07/09','RR/MM/DD'),0,4,'null','erkixyyrqv@jvaulacrqk.com','ndzfeganzc1203','Naree Hwang','http://c4.poing.co.kr/54f6d7c0d20c7839f5000331.jpg',13000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (513048,'hanseul','010-2182-2182',to_date('92/03/13','RR/MM/DD'),0,4,'null','zhdjcqsprq@anoacsazyw.com','mbzugzumiu252','hanseul','http://c4.poing.co.kr/54f295c2d20c7870fc0006fc.jpg',14000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (672862,'이주영','010-8264-8264',to_date('87/01/01','RR/MM/DD'),0,5,'null','deizlwzpuv@arggoaeglq.com','pbyrpthrzq1403','이주영','http://c4.poing.co.kr/547dd4abd20c78319d00024f.jpg',1000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (646653,'새싹','010-9973-9973',to_date('95/09/20','RR/MM/DD'),1,1,'앵겔지수 무한상승중','bdxxhfncyz@xoziufegln.com','liyriycyoh1979','새싹','http://c4.poing.co.kr/57b6bd24668a487bff000004.jpg',8000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (610979,'이성수','010-2694-2694',to_date('88/02/04','RR/MM/DD'),1,9,'null','rgzusyabkt@pvbroflrfv.com','lnajixdlxn1577','이성수','http://c4.poing.co.kr/5783cd18668a4861f4000180.jpg',16000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (599857,'양정아','010-2568-2568',to_date('81/12/24','RR/MM/DD'),0,6,'null','hpzatdrblj@khmegmjhzh.com','ynkxmpleuu958','양정아','http://c1.poing.co.kr/original/images/user/user_base.png',8000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (661692,'카롱맘','010-31-31',to_date('98/02/13','RR/MM/DD'),0,5,'null','mcfrueqtjv@drsdowrasd.com','siiszyuisb957','카롱맘','http://c4.poing.co.kr/MjAxODA3/15318381965b4dfef42a900.png',12000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (642529,'Kim Jae-Eun','010-122-122',to_date('96/06/06','RR/MM/DD'),1,7,'#Foodie #Former-Journalist','gawzivtwjv@waeiyxdlwb.com','bpyzzzrhax565','Kim Jae-Eun','http://c4.poing.co.kr/MjAxNjEx/1480330332583c0c5c854f5.jpeg',1000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (444856,'Wannabefoodie','010-7432-7432',to_date('89/10/06','RR/MM/DD'),0,4,'null','vtiyzxkunf@lxgmrttnix.com','uuoklmtsni1225','Wannabefoodie','http://c1.poing.co.kr/original/images/user/user_base.png',3000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (336595,'박소은','010-5994-5994',to_date('81/10/22','RR/MM/DD'),1,2,'null','tcomdlzspp@jebjhfgztk.com','mejblqjywk1046','박소은','http://c4.poing.co.kr/5470aa93d20c7855230003fa.jpg',17000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (654486,'이제니','010-5128-5128',to_date('93/10/26','RR/MM/DD'),1,1,'1일1리뷰를해봅시다.','hudsrgviou@jcagplmdty.com','cvycbziztp1938','이제니','http://c4.poing.co.kr/55e8ff6ed820b9420d00000a.jpg',19000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (575607,'이무민','010-1545-1545',to_date('86/08/22','RR/MM/DD'),1,8,'삼청동 아띠제가 없어져서 넘나 슬프다','nbhwixtymt@caofualodl.com','srortregar683','이무민','http://c4.poing.co.kr/MjAxNjEx/1479198438582ac6e64f2be.jpeg',17000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (621423,'흠뮹킹','010-5647-5647',to_date('95/02/17','RR/MM/DD'),1,8,'.','wsdnevawhn@zlhkqplyqh.com','kekxxxrehg1615','흠뮹킹','http://c4.poing.co.kr/MjAxNzEw/150692993159d1ed0b7178f.jpeg',19000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (627988,'Geunhoo Lim','010-6067-6067',to_date('98/09/09','RR/MM/DD'),1,5,'null','mrqxgszemw@ynmngsuofc.com','etgowzoght24','Geunhoo Lim','http://c4.poing.co.kr/56c1b717d820b93e7a00009f.jpg',5000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (621822,'강현','010-1045-1045',to_date('96/11/05','RR/MM/DD'),1,1,'null','pzbpfqahmc@tladfggjzx.com','jvqoubmkgv1380','강현','http://c4.poing.co.kr/MjAxNzEx/15104866525a08327c4540c.png',13000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (537740,'김규철','010-8213-8213',to_date('84/08/05','RR/MM/DD'),1,3,'null','fiadnretdf@zoyulvmvwh.com','khwhwbxdhh303','김규철','http://c4.poing.co.kr/556aa9e6418c1a3c9d0007db.jpg',13000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (649971,'먹보','010-5753-5753',to_date('82/11/04','RR/MM/DD'),1,9,'입맛이 다른건 엄마가 다르기 때문입니다.','bxgmfcqvik@lmmlgkcziz.com','xyuhswdmho580','먹보','http://c4.poing.co.kr/MjAxODA4/15347395035b7a442f2de3b.jpeg',4000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (240372,'wookchelineguide','010-7796-7796',to_date('95/05/28','RR/MM/DD'),1,8,'@wookchelineguide','njlimrfgad@xwlwikwizn.com','tzhfghzdxq1714','wookchelineguide','http://c4.poing.co.kr/MjAxNzA2/1498124674594b9182f2d27.jpeg',14000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (542278,'Jin','010-5163-5163',to_date('87/04/17','RR/MM/DD'),1,6,'맛있는거조아요 흐흐','rwsmooblls@kpkcjwdjzi.com','ptgarbiyve253','Jin','http://c4.poing.co.kr/568a0b57d820b97f80000117.jpg',6000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (653732,'DJ','010-9321-9321',to_date('81/05/17','RR/MM/DD'),0,1,'null','krusnsbjye@akuvsarvwh.com','cguzepufir1683','DJ','http://c1.poing.co.kr/original/images/user/user_base.png',18000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (631725,'투명인간','010-2573-2573',to_date('81/05/09','RR/MM/DD'),1,1,'??','atsymoavqw@yywtraixsw.com','gsgkidieyg860','투명인간','http://c4.poing.co.kr/MjAxOTAz/15537658585c9c95e216fd0.jpeg',2000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (685990,'JH','010-1112-1112',to_date('91/04/03','RR/MM/DD'),1,1,'null','wobhicaeac@cwmxgbhuyn.com','rhzbtnfdkd1785','JH','http://c4.poing.co.kr/546cbb4cd20c782512000229.jpg',11000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (611225,'김선호','010-9599-9599',to_date('96/11/13','RR/MM/DD'),0,8,'비매너 식당 박멸','zlfdvjwvlr@juzigkmdez.com','jizhvbffxj1176','김선호','http://c4.poing.co.kr/MjAxNjEx/1478443126581f4076807fc.jpeg',7000);
Insert into POING.MEMBER (M_NO,M_NAME,M_TEL,M_BIRTH,M_GEN,MLEVEL,M_SELFINTRO,M_EMAIL,M_PW,M_NICKNAME,M_IMG,RP_SEQ) values (612996,'soy','010-6421-6421',to_date('96/10/10','RR/MM/DD'),0,7,'null','iqvvobmxid@dwtgmyyzjs.com','gantwiycek449','soy','http://c4.poing.co.kr/55cdad01cdbf525e50000895.jpg',15000);


ALTER TABLE follow
	ADD
		CONSTRAINT FK_member_TO_follower
		FOREIGN KEY (
			follower_seq
		)
		REFERENCES member (
			m_no
		);

ALTER TABLE follow
	ADD
		CONSTRAINT FK_member_TO_following
		FOREIGN KEY (
			following_seq
		)
		REFERENCES member (
			m_no
		);
		

--팔로워가 하는사람, 팔로잉이 당하는사람
INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 100022, 658225);
INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 100022, 627988);
INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 100022, 653732);
INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 100022, 365142);

INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 365142, 100022);
INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 653732, 100022);


INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 650292, 436575);
INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 627988, 658225);
INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 658225, 365142);
INSERT INTO follow (follow_seq, follower_seq, following_seq) VALUES(follow_seq.nextval, 653732, 653732);



--팔로워 구하기
WITH temp AS( 
    SELECT *  FROM member
    WHERE m_no IN ( SELECT follower_seq FROM follow WHERE following_seq = 100022)
)
SELECT temp.m_no fer_no, temp.m_name fer_name, temp.m_img fer_img, 
(SELECT COUNT(*) FROM follow WHERE follower_seq = temp.m_no) fer_ercnt,
(SELECT COUNT(*) FROM follow WHERE following_seq = temp.m_no) fer_edcnt,
(SELECT COUNT(*) FROM follow WHERE following_seq = temp.m_no AND follower_seq = 100022) amIfollow
FROM temp;


