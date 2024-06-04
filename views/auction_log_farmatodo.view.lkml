view: auction_log_farmatodo {
  sql_table_name: `sources.auction_log_farmatodo` ;;

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }
  dimension: platform_device_ifa_type {
    type: string
    sql: ${TABLE}.platform_device_ifa_type ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  measure: count {
    type: count
  }
}
