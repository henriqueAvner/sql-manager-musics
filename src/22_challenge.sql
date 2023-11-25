SELECT
    ar.name 'Artista',
    COUNT(son.title) 'Quantidade de músicas'
FROM artists AS ar
    INNER JOIN albums AS al ON al.artist_id = ar.id
    INNER JOIN songs AS son ON son.album_id = al.id
GROUP BY ar.name
ORDER BY
    COUNT(son.title) DESC,
    ar.name ASC
LIMIT 3;