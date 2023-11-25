SELECT
    al.title 'Album',
    al.release_year 'Ano de lançamento',
    ar.name 'Artista'
FROM albums AS al
    INNER JOIN artists AS ar ON ar.id = al.artist_id
WHERE al.title LIKE '%You%'
ORDER BY al.release_year;