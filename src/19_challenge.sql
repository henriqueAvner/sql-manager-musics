SELECT
    son.title 'Título',
    son.duration_in_seconds 'Duração',
    al.title 'Álbum'
FROM songs AS son
    INNER JOIN albums AS al ON son.album_id = al.id
WHERE
    son.duration_in_seconds BETWEEN '300' AND '480'
ORDER BY
    son.duration_in_seconds;