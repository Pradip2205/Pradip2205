SELECT 
    genreid as genre_id,
    name as genre_name

FROM {{ source('training', 'GENRE') }}