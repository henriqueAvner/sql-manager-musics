SELECT
    usr.full_name 'Pessoa usuária',
    COUNT(arf.artist_id) 'Artistas que segue'
FROM users AS usr
    INNER JOIN artists_followers AS arf ON arf.user_id = usr.id
GROUP BY usr.full_name
ORDER BY usr.full_name;