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

explore: reports_pmps {
  hidden: yes
  join: reports_pmps__cid {
    view_label: "Reports Pmps: Cid"
    sql: LEFT JOIN UNNEST(${reports_pmps.cid}) as reports_pmps__cid ;;
    relationship: one_to_many
  }
}

explore: search_retail_media {}
