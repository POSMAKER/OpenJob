Select * From Jobcategory
	Where subjobcategory IS null
	Select * From Jobcategory
	
SELECT * FROM Post
UPDATE Post Set companyNo = 13 WHERE companyNo = 0;

SELECT * FROM CompanyReview
ALTER TABLE CompanyReview CHANGE balancescoe balancescore VARCHAR(8) NOT NULL;

SELECT * FROM CompanyReviewInfo
SELECT * FROM CompanyReview

DELETE FROM CompanyReview WHERE companyreviewNo = 6;

Delete FROM  CompanyReviewInfo WHERE companyNo = 32

ALTER TABLE CompanyReview
ADD CONSTRAINT FK_CompanyReview_CompanyReviewInfo_companyreviewNo
FOREIGN KEY (companyreviewNo) REFERENCES InterviewReviewInfo(companyreviewNo)
ON DELETE CASCADE

SELECT * FROM CompanyReview
DELETE FROM CompanyReview WHERE companyreviewNo = '7'

ALTER TABLE CompanyReview CHANGE reviewNo interviewNo INT NOT NULL;
SELECT * FROM Member
SELECT * FROM CompanyMember
INSERT INTO Member(gender,age,email,password,career) VALUES('M','26','dltjdgur327','1111','1')
INSERT INTO CompanyMember VALUES('5','13','이성혁','010-8888-7777')

SELECT * FROM InterviewReviewInfo
SELECT * FROM InterviewReview

DELETE FROM InterviewReviewInfo

SELECT employstatus FROM
(SELECT IF(employstatus = 'true','true','false') as employstatus FROM CompanyReviewInfo
		WHERE companyNo = '13') A
		GROUP BY employstatus

SELECT 
SELECT COUNT(*) as total, A.recommandScore FROM CompanyReview, 
(SELECT COUNT(*) as recommandScore FROM CompanyReview WHERE recommandScore = 'Y') AS rec
		
Member.memberKey = SavedCompany.memberNo
		
DELETE FROM CompanyReview WHERE interviewNo='1'
DELETE FROM InterviewReviewInfo WHERE 
SELECT * FROM SavedCompany

SELECT memberno, Member.email, companyno, companyname FROM Member
LEFT Join CompanyMember USING(memberNo)
LEFT Join Company USING(companyNo)
WHERE Member.email = 'kumasyr@gmail.com'


SELECT jobcategory FROM Post
		WHERE companyNo = '13'
		GROUP BY jobcategory
		
SELECT subjobcategory FROM Post
		WHERE companyNo = '13' AND jobcategory ='IT/인터넷'
		GROUP BY subjobcategory
		
		
SELECT * FROM Post WHERE location REGEXP '서울|서울 강남구'

SELECT * FROM CompanyReviewInfo WHERE NOT employstatus = 'true'

