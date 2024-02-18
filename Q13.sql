--Q13
SELECT  b.genres,b.originalTitle,b.startYear, r.averageRating, tp.category,ak.title, n.primaryName,b.titleType
From name As n
Left join titlePrincipals As tp on tp.nconst=n.nconst
Left join titleCrew As tc on tc.tconst=tp.tconst 
Left join akas As ak on tp.tconst=ak.titleId
Left join titleBasics As b ON b.tconst = tp.tconst
Left join titleRatings As r ON r.tconst= tp.tconst 
      
where b.genres LIKE '%Action%' and
b.genres LIKE '%Short%' and
tp.tconst=(Select tp.tconst where r.averageRating>7.0) and
n.primaryProfession IS NOT NULL and
tp.category IS NOT NULL and
tc.directors IS NOT NULL and
b.titleType = 'short' AND
tp.category='director' AND
b.startYear between 1990 and 2022
      
      
group by b.genres,b.originalTitle,b.startYear, r.averageRating, tp.category,ak.title, n.primaryName,b.titleType
order by  n.primaryName
     