connection: "salesforce"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: campaign_usa_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: campaign_usa_default_datagroup


explore: report_retail_media_chiper {}
