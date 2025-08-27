view: report_retail_media_geo_delta {
  sql_table_name: `adsmovil-reports.Adsmovil_Retail_Media.report_retail_media_geo_delta` ;;

  dimension: avg_sales_bedore {
    type: number
    sql: ${TABLE}.avg_sales_bedore ;;
  }
  dimension: avg_sales_during {
    type: number
    sql: ${TABLE}.avg_sales_during ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  measure: count {
    type: count
  }

}
