--Q1
SELECT *
FROM titleBasics as b
WHERE genres LIKE '%Fantasy%' and startYear=2022 
group by b.genres, b.isAdult, b.tconst, b.endYear, b.startYear, b.titleType, b.originalTitle, b.primaryTitle, b.runtimeMinutes
order by originalTitle