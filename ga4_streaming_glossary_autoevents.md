| Platform | Event                 | Event_params     |
|----------|-----------------------|-----------------------------------------------------------------|
| (app)    | ad_click               | ad_event_id                                                     |
| (app)    | ad_exposure            | firebase_screen, firebase_screen_id, firebase_screen_class, exposure_time |
| (app)    | ad_impression          | ad_event_id, value*                                             |
| (app)    | ad_query               | ad_event_id                                                     |
| (app)    | ad_reward              | ad_unit_code, reward_type, reward_value                        |
| (app)    | adunit_exposure        | firebase_screen, firebase_screen_id, firebase_screen_class, exposure_time |
| (app)    | app_clear_data          | -                                                               |
| (app)    | app_exception          | fatal, timestamp, engagement_time_msec                         |
| (app)    | app_remove             | -                                                               |
| (app)    | app_store_refund        | product_id, value, currency, quantity                           |
| (app)    | app_store_subscription_cancel | product_id, price, value, currency, cancellation_reason    |
| (app)    | app_store_subscription_convert | product_id, price, value, currency, quantity               |
| (app)    | app_store_subscription_renew | product_id, price, value, currency, quantity, renewal_count |
| (app)    | app_update              | previous_app_version                                            |
| (web)    | click                   | link_classes, link_domain, link_id, link_url, outbound (boolean) |
| (app)    | dynamic_link_app_open   | source, medium, campaign, link_id, accept_time               |
| (app)    | dynamic_link_app_update | source, medium, campaign, link_id, accept_time               |
| (app)    | dynamic_link_first_open | source, medium, campaign, link_id, accept_time               |
| (app)    | error                   | firebase_error, firebase_error_value                            |
| (web)    | file_download           | file_extension, file_name link_classes, link_id, link_text, link_url |
| (app)    | firebase_campaign       | source, medium, campaign, term, content, gclid, aclid, cp1, anid, click_timestamp, campaign_info_source |
| (app)    | message_action          | message_name, message_device_time, message_id                  |
| (app)    | message_dismiss         | message_name, message_device_time, message_id                  |
| (app)    | message_impression      | message_name, message_device_time, message_id                  |
| (app)    | first_open              | previous_gmp_app_id, updated_with_analytics, previous_first_open_count, system_app, system_app_update, deferred_analytics_collection, reset_analytics_cause, engagement_time_msec |
| (app, web) | first_visit            | -                                                               |
| (web)    | form_start              | form_id, form_name, form_destination                            |
| (web)    | form_submit             | form_id, form_name, form_destination, form_submit_text          |
| (app)    | in_app_purchase         | product_id, price, value, currency, quantity, subscription, free_trial, introductory_price |
| (app)    | notification_dismiss    | message_name, message_time, message_device_time, message_id, topic, label, message_channel |
| (app)    | notification_foreground  | message_name, message_time, message_device_time, message_id, topic, label, message_channel, message_type |
| (app)    | notification_open        | message_name, message_time, message_device_time, message_id, topic, label, message_channel |
| (app)    | notification_receive     | message_name, message_time, message_device_time, message_id, topic, label, message_channel, message_type |
| (app)    | os_update               | previous_os_version                                            |
| (web)    | page_view               | page_location (page URL), page_referrer (previous page URL), engagement_time_msec |
| (app)    | screen_view             | firebase_screen, firebase_screen_class, firebase_screen_id, firebase_previous_screen, firebase_previous_class, firebase_previous_id, engagement_time_msec |
| (web)    | scroll                  | engagement_time_msec                                            |
| (app, web) | session_start          | -                                                               |
| (app, web) | user_engagement        | engagement_time_msec                                            |
| (web)    | video_complete          | video_current_time, video_duration, video_percent, video_provider, video_title, video_url, visible (boolean) |
| (web)    | video_progress          | video_current_time, video_duration, video_percent, video_provider, video_title, video_url, visible (boolean) |
| (web)    | video_start             | video_current_time, video_duration, video_percent, video_provider, video_title, video_url, visible (boolean) |
| (web)    | view_search_results     | search_term, optionally ‘q_<additional key="">’ (where <additional key=""> matches an additional query parameter you specify to be collected under advanced settings) |
