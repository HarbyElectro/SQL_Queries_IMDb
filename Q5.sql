--Q5
SELECT  b.genres,b.originalTitle,b.startYear, r.averageRating,ak.language, tp.category,ak.title, n.primaryName,b.titleType
From name As n
Left join titlePrincipals As tp on tp.nconst=n.nconst
Left join titleCrew As tc on tc.tconst=tp.tconst
Left join akas As ak on tp.tconst=ak.titleId
Left join titleBasics As b ON b.tconst = tp.tconst
Left join titleRatings As r ON r.tconst= tp.tconst
      
where b.genres LIKE '%Drama%' and 
tp.category IS NOT NULL and
tc.directors IS NOT NULL and
b.titleType = 'short' AND
tp.category='director' AND
ak.region='CA' AND
ak.language='fr'
      
      
group by b.genres,b.originalTitle,b.startYear, r.averageRating,ak.language, tp.category,ak.title, n.primaryName,b.titleType
order by b.startYear