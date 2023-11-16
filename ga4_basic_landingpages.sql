SELECT
  event_param.value.string_value AS page,
  COUNT(DISTINCT event_bundle_sequence_id) AS sessions_started

FROM
  `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`,
  UNNEST(event_params) AS event_param


WHERE event_name = 'page_view'
  AND event_param.key = 'page_location'


GROUP BY page
ORDER BY sessions_started DESC;
