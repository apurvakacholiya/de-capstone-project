{{ config(materialized='view') }}

SELECT
  raw_json:id::NUMBER       AS post_id,
  raw_json:userId::NUMBER   AS user_id,
  raw_json:title::STRING    AS title,
  raw_json:body::STRING     AS body
FROM {{ source('raw_data', 'posts') }}
