{{ config(materialized='view') }}

SELECT
  post_id,
  COUNT(comment_id) AS total_comments
FROM {{ ref('stg_comments') }}
GROUP BY post_id
