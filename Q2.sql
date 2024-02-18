--Q2
SELECT originalTitle,startYear,runtimeMinutes,genres,averageRating 
FROM titleBasics b,titleRatings r 
where  b.tconst=r.tconst and startYear=2020 and averageRating > 8.0  and titleType LIKE 'movie'and runtimeMinutes >0
group by originalTitle,startYear,runtimeMinutes,genres,averageRating 
order by originalTitle 