connection: "salesforce"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: campaign_usa_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: campaign_usa_default_datagroup


explore: validation_alerts_last_date {}

explore: validation_alerts {}

explore: saleforce_validation_alerts {}

explore: implementation_platforms {}

explore: total_implementation_platforms {}


explore: search_retail_media {}
explore: final_master_table {}

explore: reports_pmps_sales {}

explore: report_chiper {
  hidden: yes
  join: data_chiper {
    view_label: "Report Chiper: Chiper"
    sql: LEFT JOIN UNNEST(${report_chiper.chiper}) as report_chiper__chiper ;;
    relationship: one_to_many
  }
}
