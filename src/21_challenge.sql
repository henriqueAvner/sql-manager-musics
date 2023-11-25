SELECT
    al.title 'Álbum',
    SUM(son.duration_in_seconds) 'Duração'
FROM albums AS al
    INNER JOIN songs AS son ON son.album_id = al.id
GROUP BY al.title
ORDER BY
    SUM(son.duration_in_seconds) DESC;