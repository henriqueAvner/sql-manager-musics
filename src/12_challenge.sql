SELECT
    ar.name 'Artista',
    COUNT(al.artist_id) 'Quantidade de álbuns'
FROM artists AS ar
    INNER JOIN albums AS al ON al.artist_id = ar.id
GROUP BY ar.name
ORDER BY
    COUNT(al.artist_id) DESC,
    ar.name;