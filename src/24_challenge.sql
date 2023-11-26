SELECT
    us.full_name 'Nome',
    COUNT(son.title) 'Quantidade de músicas reproduzidas'
FROM users AS us
    INNER JOIN history_play_songs AS his ON his.user_id = us.id
    INNER JOIN songs AS son ON his.song_id = son.id
GROUP BY us.full_name
ORDER BY
    COUNT(son.title) DESC,
    us.full_name ASC;