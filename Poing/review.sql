SELECT rev.*, rest.rest_name, rest.rest_seq, mem.m_name, mem.m_img,
(SELECT COUNT(*) FROM follow WHERE follower_seq = rev.m_no) m_ercnt,
(SELECT COUNT(*) FROM review WHERE m_no = rev.m_no) m_revcnt, 
(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no) like_cnt,
(SELECT COUNT(*) FROM review_comment WHERE rev_no = rev.rev_no) commend_cnt
,(SELECT COUNT(*) FROM follow WHERE following_seq = rev.m_no AND follower_seq = 100) amIfollow
,(SELECT COUNT(*) FROM review_like WHERE rev_no = rev.rev_no AND m_no = 100) amIlike
FROM review rev
JOIN p_restaurant rest ON rev.rest_no =  rest.rest_seq
JOIN member mem ON rev.m_no = mem.m_no
WHERE rev.m_no IN (SELECT following_seq FROM follow WHERE follower_seq = 100 )
ORDER BY rev_wtime DESC;


/* 리뷰좋아요 */
CREATE TABLE review_like (
	rl_no NUMBER NOT NULL, /* 리뷰좋아요seq */
	m_no NUMBER, /* 회원번호 */
	rev_no NUMBER /* 리뷰코드 */
);

ALTER TABLE review_like
	ADD
		CONSTRAINT PK_review_like
		PRIMARY KEY (
			rl_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* 리뷰 */
CREATE TABLE review (
	rev_no NUMBER NOT NULL, /* 리뷰코드 */
	rest_no NUMBER, /* 레스토랑 코드번호 */
	rev_wtime DATE, /* 작성시간 */
	rev_content VARCHAR2(1000), /* 리뷰내용 */
	m_no NUMBER, /* 회원번호 */
	rev_starpoint NUMBER /* 별점seq */
);

ALTER TABLE review
	ADD
		CONSTRAINT PK_review
		PRIMARY KEY (
			rev_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* 리뷰댓글 */
CREATE TABLE review_comment (
	rc_no NUMBER NOT NULL, /* 리뷰댓글 코드번호 */
	rc_content VARCHAR2(300), /* 리뷰댓글content */
	rc_wtime DATE, /* 작성시간 */
	m_no NUMBER, /* 회원번호 */
	rev_no NUMBER /* 리뷰코드 */
);

ALTER TABLE review_comment
	ADD
		CONSTRAINT PK_review_comment
		PRIMARY KEY (
			rc_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* 리뷰이미지 */
CREATE TABLE review_img (
	rev_img_seq NUMBER NOT NULL, /* 리뷰이미지seq */
	rev_img VARCHAR(100), /* 리뷰이미지 */
	rev_no NUMBER /* 리뷰코드 */
);
CREATE SEQUENCE review_img_seq;

ALTER TABLE review_img
	ADD
		CONSTRAINT PK_review_img
		PRIMARY KEY (
			rev_img_seq
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE review_like
	ADD
		CONSTRAINT FK_review_TO_review_like
		FOREIGN KEY (
			rev_no
		)
		REFERENCES review (
			rev_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE review_comment
	ADD
		CONSTRAINT FK_member_TO_review_comment
		FOREIGN KEY (
			m_no
		)
		REFERENCES member (
			m_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE review_comment
	ADD
		CONSTRAINT FK_review_TO_review_comment
		FOREIGN KEY (
			rev_no
		)
		REFERENCES review (
			rev_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE review_img
	ADD
		CONSTRAINT FK_review_TO_review_img
		FOREIGN KEY (
			rev_no
		)
		REFERENCES review (
			rev_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;
