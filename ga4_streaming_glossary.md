# GA4 Streaming Schema Glossary

This glossary provides explanations for each field in the GA4 streaming schema used in BigQuery.

## Fields

### `event_name`
The name of the GA4 event being tracked.

### `event_params`
An array containing key-value pairs representing event parameters.

### `user_id`
The unique identifier for the user.

### `user_pseudo_id`
A pseudo-identifier for the user, used for privacy.

### `timestamp_micros`
The timestamp of when the event occurred in microseconds.

### `event_date`
The date of the event.

### `user_agent`
The user agent string representing the client.

### `platform`
The platform from which the event originated (e.g., web, app).

### `device_category`
The category of the user's device (e.g., desktop, mobile).

### `geo_region`
The geographical region of the user.

### `geo_city`
The city from which the event originated.

### `geo_country`
The country of the user.

### `traffic_source_source`
The source of the traffic.

### `traffic_source_medium`
The medium of the traffic source.

### `traffic_source_campaign`
The campaign associated with the traffic source.

### `traffic_source_keyword`
The keyword used in the search.

### `traffic_source_ad_content`
The content of the ad.

### `page_location`
The location (URL) of the page.

### `page_referrer`
The referrer URL of the page.

### `page_title`
The title of the page.

### `page_hostname`
The hostname of the page.

### `page_path`
The path of the page URL.

### `ecommerce_purchase_revenue_usd`
The revenue from an ecommerce purchase in USD.

### `ecommerce_purchase_id`
The ID associated with an ecommerce purchase.

### `ecommerce_transaction_id`
The ID associated with an ecommerce transaction.

### `ecommerce_items`
An array containing details of ecommerce items.

... (Add more fields as needed)

