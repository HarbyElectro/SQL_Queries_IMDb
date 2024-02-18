--Q14
SELECT distinct b.genres,b.originalTitle,b.startYear, r.averageRating, tp.category,ak.title, n.primaryName,b.titleType, E.seasonNumber, E.episodeNumber
From name As n
Left join titlePrincipals As tp on tp.nconst=n.nconst
Left join titleCrew As tc on tc.tconst=tp.tconst 
Left join akas As ak on tp.tconst=ak.titleId
Left join titleBasics As b ON b.tconst = tp.tconst
Left join titleRatings As r ON r.tconst= tp.tconst 
Left join titleEpisode As E ON tp.tconst=E.tconst
      
group by b.genres,b.originalTitle,b.startYear, r.averageRating, tp.category,ak.title, n.primaryName,b.titleType, E.seasonNumber, E.episodeNumber
order by b.originalTitle
     