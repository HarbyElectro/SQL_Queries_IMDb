--Q3
SELECT distinct  b.originalTitle,r.averageRating,r.numVotes, b.genres, b.startYear, b.titleType, b.primaryTitle, b.runtimeMinutes
FROM titleBasics b INNER JOIN titleRatings r ON b.tconst = r.tconst 
WHERE genres LIKE '%Fantasy%' AND startYear > 1989 AND averageRating > 8.0 AND numVotes > 1000 AND titleType = 'movie'
group by b.originalTitle,r.averageRating,r.numVotes, b.genres, b.startYear, b.titleType, b.primaryTitle, b.runtimeMinutes
order by originalTitle 