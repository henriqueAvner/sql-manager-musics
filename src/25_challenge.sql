SELECT
    al.title 'Álbum',
    COUNT(son.title) 'Quantidade de músicas reproduzidas'
FROM albums AS al
    INNER JOIN songs AS son ON son.album_id = al.id
    INNER JOIN history_play_songs AS his ON his.song_id = son.id
GROUP BY al.title
ORDER BY
    COUNT(son.title) DESC,
    al.title ASC
LIMIT 5;