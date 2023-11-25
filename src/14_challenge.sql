SELECT
    ar.name 'Artista',
    GROUP_CONCAT(al.title) 'Álbuns'
FROM artists AS ar
    INNER JOIN albums AS al ON ar.id = al.artist_id
GROUP BY ar.name
ORDER BY ar.name;