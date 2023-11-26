SELECT
    ar.name 'Artista',
    COUNT(arf.user_id) 'Total de seguidores'
FROM artists AS ar
    INNER JOIN artists_followers AS arf ON arf.artist_id = ar.id
GROUP BY ar.name
HAVING COUNT(arf.user_id) < 5;