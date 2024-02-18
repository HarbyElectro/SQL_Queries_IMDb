--Q6
SELECT  b.genres,b.originalTitle,b.startYear, r.averageRating,ak.language, tp.category,ak.title, n.primaryName,b.titleType,e.episodeNumber
From name As n
Left join titlePrincipals As tp on tp.nconst=n.nconst
Left join titleCrew As tc on tc.tconst=tp.tconst
Left join akas As ak on tp.tconst=ak.titleId
Left join titleBasics As b ON b.tconst = tp.tconst
Left join titleRatings As r ON r.tconst= tp.tconst
Left join titleEpisode As E ON tp.tconst=E.tconst
      
where b.genres LIKE '%Drama%' and 
tp.category IS NOT NULL and
tc.directors IS NOT NULL and
b.titleType = 'tvEpisode' AND
tp.category='director' AND
ak.region='US' AND
e.episodeNumber <> ''
      
      
group by b.genres,b.originalTitle,b.startYear, r.averageRating,ak.language, tp.category,ak.title, n.primaryName,b.titleType,e.episodeNumber
order by b.startYear