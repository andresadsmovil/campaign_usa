view: search_retail_media {
  sql_table_name: `adsmovil-reports.looker_ml.search_retail_media` ;;

  dimension: keys {
    type: string
    sql: ${TABLE}.keys ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }
  dimension: retailer {
    type: string
    sql: ${TABLE}.retailer ;;
  }
  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }
  measure: count {
    type: count
  }
  measure: count_search {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.count_search ;;
  }
}
