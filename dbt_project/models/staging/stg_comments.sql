{{ config(materialized='view') }}

SELECT
  raw_json:id::NUMBER       AS comment_id,
  raw_json:postId::NUMBER   AS post_id,
  raw_json:name::STRING     AS commenter_name,
  raw_json:email::STRING    AS commenter_email,
  raw_json:body::STRING     AS comment_body
FROM {{ source('raw_data', 'comments') }}
