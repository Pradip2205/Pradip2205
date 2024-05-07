SELECT 
        trackid	as track_id,
        name as track_name,
        albumid	as album_id,
        mediatypeid	as mediatype_id,
        genreid as genre_id,
        composer as	track_composer,
        milliseconds as track_length_ms,
        bytes as bytes,
        unitPrice as unit_price,
        round(milliseconds/power(10,3),3) as  track_length_seconds,
        round(milliseconds/(power(10,3) * 60),3) as track_length_mins

FROM {{ source('training', 'TRACK') }}