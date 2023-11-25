SELECT
    ar.name 'Artista',
    al.title 'Álbum',
    son.title 'Música'
FROM artists AS ar
    INNER JOIN albums AS al ON al.artist_id = ar.id
    INNER JOIN songs AS son ON son.album_id = al.id
WHERE ar.name <> 'The Beatles'
ORDER BY
    ar.name,
    al.title,
    son.title;