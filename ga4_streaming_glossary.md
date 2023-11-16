# GA4 Streaming Schema Glossary
>This glossary provides explanations for each field in the GA4 streaming schema used in BigQuery.

## EVENT
>The event fields contain information that uniquely identifies an event.

| Field Name          | Data Type | Description                                                |
|---------------------|-----------|------------------------------------------------------------|
| `event_date`              | STRING    | The date when the event was logged (YYYYMMDD format in the registered timezone of your app).|
| `event_timestamp`         | INTEGER   | The time (in microseconds, UTC) when the event was logged on the client.|
| `event_previous_timestamp`| INTEGER    | The time (in microseconds, UTC) when the event was previously logged on the client.|
| `event_name`| STRING       | The name of the event.|
| `event_value_in_usd`            | FLOAT     | The currency-converted value (in USD) of the event's "value" parameter.                         |
| `event_bundle_sequence_id`       | INTEGER   | The sequential ID of the bundle in which these events were uploaded.                             |
| `event_server_timestamp_offset` | INTEGER   | Timestamp offset between collection time and upload time in microseconds.                       |
| `event_name`                    | STRING    | The name of the GA4 event being tracked.                                                       |
| `event_params`                  | RECORD    | An array containing key-value pairs representing event parameters.                              |
| `user_id`                       | STRING    | The unique identifier for the user.                                                            |



## event_params RECORD
>The event_params RECORD can store campaign-level and contextual event parameters as well as any user-defined event parameters. The event_params RECORD is repeated for each key that is associated with an event. The set of parameters stored in the event_params RECORD is unique to each implementation. To see the complete list of event parameters for your implementation, query the event parameter list.

| Field Name                          | Data Type | Description                                                                                     |
|-------------------------------------|-----------|-------------------------------------------------------------------------------------------------|
| `event_params.key`                  | STRING    | The name of the event parameter.                                                                |
| `event_params.value`                | RECORD    | A record containing the event parameter's value.                                               |
| `event_params.value.string_value`   | STRING    | If the event parameter is represented by a string, such as a URL or campaign name, it is populated in this field. |
| `event_params.value.int_value`      | INTEGER   | If the event parameter is represented by an integer, it is populated in this field.             |
| `event_params.value.double_value`   | FLOAT     | If the event parameter is represented by a double value, it is populated in this field.        |
| `event_params.value.float_value`    | FLOAT     | If the event parameter is represented by a floating point value, it is populated in this field. This field is not currently in use. |


## item_params RECORD
>The item_params RECORD can store item parameters as well as any user-defined item parameters. The set of parameters stored in the item_params RECORD is unique to each implementation.

| Field Name                            | Data Type | Description                                                                                           |
|---------------------------------------|-----------|-------------------------------------------------------------------------------------------------------|
| `item_params.key`                     | STRING    | The name of the item parameter.                                                                      |
| `item_params.value`                   | RECORD    | A record containing the item parameter's value.                                                     |
| `item_params.value.string_value`      | STRING    | If the item parameter is represented by a string, it is populated in this field.                     |
| `item_params.value.int_value`         | INTEGER   | If the item parameter is represented by an integer, it is populated in this field.                   |
| `item_params.value.double_value`      | FLOAT     | If the item parameter is represented by a double value, it is populated in this field.              |
| `item_params.value.float_value`       | FLOAT     | If the item parameter is represented by a floating point value, it is populated in this field.      |


# USER

# GA4 Streaming Schema Glossary
This glossary provides explanations for each field in the GA4 streaming schema used in BigQuery.

## User Fields
The user fields contain information that uniquely identifies the user associated with the event.

| Field Name                       | Data Type | Description                                                                       |
|----------------------------------|-----------|-----------------------------------------------------------------------------------|
| `is_active_user`                 | BOOLEAN   | Whether the user was active (True) or inactive (False) at any point in the calendar day. Included in only the daily tables (events_YYYYMMDD). |
| `user_id`                        | STRING    | The unique ID assigned to a user.                                                |
| `user_pseudo_id`                 | STRING    | The pseudonymous id (e.g., app instance ID) for the user.                         |
| `user_first_touch_timestamp`     | INTEGER   | The time (in microseconds) at which the user first opened the app or visited the site. |

## Privacy Info Fields
The privacy_info fields contain information based on the consent status of a user when consent mode is enabled.

| Field Name                              | Data Type | Description                                                      |
|-----------------------------------------|-----------|------------------------------------------------------------------|
| `privacy_info.ads_storage`               | STRING    | Whether ad targeting is enabled for a user. Possible values: Yes, No, Unset. |
| `privacy_info.analytics_storage`         | STRING    | Whether Analytics storage is enabled for the user. Possible values: Yes, No, Unset. |
| `privacy_info.uses_transient_token`     | STRING    | Whether a web user has denied Analytics storage and the developer has enabled measurement without cookies based on transient tokens in server data. Possible values: Yes, No, Unset. |

## User Properties
The user_properties RECORD contains any user properties that you have set. It is repeated for each key that is associated with a user.

| Field Name                               | Data Type | Description                                                      |
|------------------------------------------|-----------|------------------------------------------------------------------|
| `user_properties.key`                    | STRING    | The name of the user property.                                    |
| `user_properties.value`                  | RECORD    | A record for the user property value.                            |
| `user_properties.value.string_value`     | STRING    | The string value of the user property.                           |
| `user_properties.value.int_value`        | INTEGER   | The integer value of the user property.                          |
| `user_properties.value.double_value`     | FLOAT     | The double value of the user property.                           |
| `user_properties.value.float_value`      | FLOAT     | This field is currently unused.                                  |
| `user_properties.value.set_timestamp_micros` | INTEGER | The time (in microseconds) at which the user property was last set. |

## User LTV
The user_ltv RECORD contains Lifetime Value information about the user. This RECORD is not populated in intraday tables.

| Field Name                           | Data Type | Description                                                      |
|--------------------------------------|-----------|------------------------------------------------------------------|
| `user_ltv.revenue`                   | FLOAT     | The Lifetime Value (revenue) of the user. This field is not populated in intraday tables. |
| `user_ltv.currency`                  | STRING    | The Lifetime Value (currency) of the user. This field is not populated in intraday tables. |
