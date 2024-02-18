--Q10
SELECT COUNT(*) AS count_per_group, b.genres,b.originalTitle, n.primaryName,n.primaryProfession, r.averageRating, tp.category,ak.title, ak.language, tc.directors,tc.writers
From name As n
Left join titlePrincipals As tp on tp.nconst=n.nconst
Left join titleCrew As tc on tc.tconst=tp.tconst
Left join akas As ak on tp.tconst=ak.titleId
Left join titleBasics As b ON b.tconst = tp.tconst
Left join titleRatings As r ON r.tconst= tp.tconst
      
where b.genres LIKE '%Action%' and 
n.primaryProfession IS NOT NULL and
tp.category IS NOT NULL and
tc.directors IS NOT NULL and
r.averageRating > 8.0 AND 
r.numVotes > 1000 AND 
b.titleType = 'movie'
      
group by b.genres,b.originalTitle, n.primaryName,n.primaryProfession, r.averageRating, tp.category,ak.title, ak.language, tc.directors,tc.writers
order by n.primaryName
     