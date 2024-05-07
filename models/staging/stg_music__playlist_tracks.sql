SELECT 
        playlistid as playlist_id,
        trackid as track_id
FROM {{ source('training', 'PLAYLISTTRACK') }}