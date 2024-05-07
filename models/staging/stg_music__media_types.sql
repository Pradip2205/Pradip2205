SELECT 
        mediatypeid as mediatype_id,
        name as mediatype_name
FROM {{ source('training', 'MEDIATYPE') }}