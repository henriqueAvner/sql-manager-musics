SELECT son.title 'Título'
FROM songs AS son
    INNER JOIN albums AS al ON al.id = son.album_id
WHERE son.album_id = 1
ORDER BY son.title;