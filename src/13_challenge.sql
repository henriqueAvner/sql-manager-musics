SELECT ar.name 'Artista'
FROM artists AS ar
    INNER JOIN albums AS al ON al.artist_id = ar.id
GROUP BY ar.name
HAVING COUNT(al.artist_id) >= 3
ORDER BY ar.name