connection: "farmatodo_sources"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: retail_media_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_media_default_datagroup

explore: campaign_events_report {}

explore: auction_log_farmatodo {}

explore: creative_info {}

explore: kpi_s {}

explore: inversion_kpi {}

explore: kpi_s_date_hour {}

explore: retail_media_offside {}

explore: onsite_reports {
  access_filter: {
    field:provider
    user_attribute: advertiser
  }
}
