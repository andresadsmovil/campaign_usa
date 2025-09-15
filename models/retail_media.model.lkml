connection: "farmatodo_sources"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: retail_media_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retail_media_default_datagroup

explore:  onsite_reports_banner_products {}
explore: onsite_reports {
  access_filter: {
    field:provider
    user_attribute: advertiser
  }
}


explore: data_category_turbo {}
