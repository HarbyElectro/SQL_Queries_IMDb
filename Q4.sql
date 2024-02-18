--Q4
SELECT titleType, originalTitle, startYear, genres 
FROM titleBasics 
WHERE titleType LIKE 'movie' AND tconst IN(SELECT tconst FROM crew WHERE directors LIKE 'nm0000229')
group by titleType, originalTitle, startYear, genres
order by  originalTitle