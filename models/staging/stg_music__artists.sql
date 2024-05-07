SELECT 
    artistid as artist_id,
    name as artist_name
    
FROM {{ source('training', 'ARTIST') }}