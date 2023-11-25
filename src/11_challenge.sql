SELECT
    title 'Album',
    release_year 'Ano de lançamento',
    name 'Artista'
FROM albums
    INNER JOIN artists ON artists.id = albums.artist_id
WHERE albums.title LIKE '%You%';