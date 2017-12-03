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

SELECT A.total, B.recommandScore FROM A, B(
(SELECT COUNT(*) as total FROM CompanyReview) AS A
(SELECT COUNT(*) as recommandScore FROM CompanyReview WHERE recommandScore = 'Y') AS B
)


SELECT recommandScore, ROUND((COUNT( * )/T.total)*100,0) as percentage
FROM CompanyReview,

SELECT companyNo, thumbimg, title, location, jobcategory, subjobcategory, type, career FROM Post 
		INNER JOIN Company USING (companyNo)
		INNER JOIN CompanyInfo USING (companyNo)
		INNER JOIN Companyimg USING (companyNo)
		ORDER BY writedate DESC;


(SELECT Count(*) FROM CompanyReview WHERE companyno='13')
(SELECT Count(*) as total FROM CompanyReview WHERE Companyno='13') AS T
WHERE recommandScore = 'Y'

SELECT
Round(AVG(totalScore),1) AS totalScore,
Round(AVG(promotionScore),1) AS promotionScore,
Round(AVG(walfareScore),1) AS walfareScore,
Round(AVG(balanceScore),1) AS balanceScore,
Round(AVG(atmosphereScore),1) AS atmosphereScore,
Round(AVG(executiveScore),1) AS executiveScore,
ROUND(COUNT(IF(recommandScore='Y',1,null))/COUNT(*)*100,0) recommandScore,
ROUND(COUNT(IF(futureScore='U',1,null))/COUNT(*)*100,0) futureScore,
ROUND(COUNT(IF(CEOScore='Y',1,null))/COUNT(*)*100,0) CEOScore 
FROM CompanyReview 
INNER JOIN CompanyReviewInfo USING(companyreviewNo)
WHERE Companyno = '13'


SELECT
Round(AVG(interviewlevel),1) AS interviewlevel,
CONCAT(ROUND(COUNT(IF(experience='P',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(experience='N',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(experience='S',1,null))/COUNT(*)*100,0)) AS experience,
CONCAT(ROUND(COUNT(IF(successed='Y',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(successed='N',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(successed='W',1,null))/COUNT(*)*100,0)) AS successed,
CONCAT(ROUND(COUNT(IF(interviewroot='온라인지원',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(interviewroot='직원추천',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(interviewroot='공개채용',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(interviewroot='해드헌터',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(interviewroot='학교 취업지원 센터',1,null))/COUNT(*)*100,0),',',
		ROUND(COUNT(IF(interviewroot='기타',1,null))/COUNT(*)*100,0)) AS interviewroot	
FROM InterviewReview 
INNER JOIN InterviewReviewInfo USING(interviewNo)
WHERE Companyno = '13'


SELECT
companyname, companyno,
IFNull(Round(AVG(totalScore),1),0) AS totalScore
FROM Company 
LEFT JOIN CompanyReviewInfo USING(companyno)
LEFT JOIN CompanyReview USING(companyreviewNo)
GROUP BY (companyno)
ORDER BY totalScore DESC LIMIT 5


(SELECT COUNT(*) as recommandScore FROM CompanyReview WHERE recommandScore = 'Y') AS A
		
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

