SELECT 
        playlistid as playlist_id,
        name as playlist_name
FROM {{ source('training', 'PLAYLIST') }}