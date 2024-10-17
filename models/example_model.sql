-- models/example_model.sql
WITH raw_data AS (
  SELECT
    id,
    event_type,
    event_time
  FROM {{ ref('segment_events') }}
)

SELECT
  id,
  event_type,
  COUNT(*) as event_count
FROM raw_data
GROUP BY id, event_type
