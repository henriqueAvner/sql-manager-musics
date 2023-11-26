SELECT ar.name 'Artista'
FROM artists AS ar
    INNER JOIN artists_followers AS arf ON arf.artist_id = ar.id
GROUP BY ar.name
ORDER BY
    COUNT(arf.artist_id) DESC
LIMIT 1;