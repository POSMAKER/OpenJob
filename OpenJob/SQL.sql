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

ALTER TABLE InterviewReview CHANGE reviewNo interviewNo INT NOT NULL;
SELECT * FROM Member
SELECT * FROM CompanyMember
INSERT INTO Member(gender,age,email,password,career) VALUES('M','27','kumasyr@gmail.com','1111','1')
INSERT INTO CompanyMember VALUES('4','13','김준수','010-2979-6208')


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