SELECT *
FROM data_analyst_jobs;

---Q1 ---1793
SELECT COUNT(*)
FROM data_analyst_jobs;

---Q2 ---ExxonMobil
SELECT *
FROM data_analyst_jobs
LIMIT 10;

---Q3 ---21 ---27
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN';

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' OR location ='KY';

---Q4 ---3
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE star_rating > 4
AND location = 'TN';

---Q5 ---151
SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;

---Q6 ---California
SELECT DISTINCT(location) AS state, 
company, 
ROUND(AVG(star_rating), 2) AS avg_rating
FROM data_analyst_jobs
GROUP BY location, company
ORDER BY avg_rating DESC;

---Q7 ---881
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs;

---Q8 ---230
SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE location = 'CA';

---Q9 ---41
SELECT company, AVG(star_rating) AS rating_avg
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company;

---Q10 ---GM,Unilever,MS,Nike,AE,KP with 4.20
SELECT company, AVG(star_rating) AS rating_avg
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY rating_avg DESC;

---Q11 ---1636
SELECT title
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';

SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';

---Q12 ---4
SELECT COUNT(title)
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analy%' OR title NOT ILIKE '%Analy%';

SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analy%' OR title NOT ILIKE '%Analy%';

---BONUS ---Internet and Software, Banks and Financial Services, Consulting and Business Services, Healthcare
SELECT domain, COUNT(title) AS hard_to_fill
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND skill ILIKE '%SQ%'
AND days_since_posting > 21
GROUP BY domain
ORDER BY hard_to_fill DESC
LIMIT 4;
