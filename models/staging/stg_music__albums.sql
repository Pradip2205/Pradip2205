SELECT 

    albumid as album_id,
    title as album_name,
    artistid as artist_id

From {{ source('training', 'ALBUM') }}