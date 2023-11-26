SELECT
    ar.name 'Artista',
    COUNT(his.id) 'Quantidade de músicas reproduzidas'
FROM artists AS ar
    INNER JOIN albums AS al ON al.artist_id = ar.id
    INNER JOIN songs AS son ON son.album_id = al.id
    INNER JOIN history_play_songs AS his ON his.song_id = son.id
GROUP BY ar.name
HAVING COUNT(his.id) >= 10
ORDER BY ar.name ASC;