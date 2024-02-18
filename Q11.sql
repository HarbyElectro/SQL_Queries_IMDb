--Q11
SELECT  b.genres,b.originalTitle, r.averageRating, tp.category,ak.title, n.primaryName,b.titleType
From name As n
Left join titlePrincipals As tp on tp.nconst=n.nconst
Left join titleCrew As tc on tc.tconst=tp.tconst
Left join akas As ak on tp.tconst=ak.titleId
Left join titleBasics As b ON b.tconst = tp.tconst
Left join titleRatings As r ON r.tconst= tp.tconst
      
where b.genres LIKE '%Action%' and 
n.primaryProfession IS NOT NULL and
tp.category IS NOT NULL and
r.averageRating > 8.0 AND 
r.numVotes > 1000 AND 
b.titleType = 'short' AND
tp.category='actor'
      
group by b.genres,b.originalTitle, r.averageRating, tp.category,ak.title, n.primaryName,b.titleType
order by b.genres
     