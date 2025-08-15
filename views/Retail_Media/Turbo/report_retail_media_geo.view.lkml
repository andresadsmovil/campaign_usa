view: report_retail_media_geo {
  sql_table_name: `adsmovil-reports.Adsmovil_Retail_Media.report_retail_media_geo` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_type {
    type: string
    sql: ${TABLE}.campaign_type ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: n__mero_de_orden {
    type: string
    sql: ${TABLE}.N__mero_de_Orden ;;
  }
  dimension: n__mero_l__nea {
    type: string
    sql: ${TABLE}.N__mero_L__nea ;;
  }
  dimension: sales_model {
    type: string
    sql: ${TABLE}.sales_model ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions ;;
  }
  measure: clicks {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.clicks ;;
  }
  measure: total_sales {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.total_sales ;;
  }
  measure: ads_spend {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.ads_spend ;;
    value_format: "$#,##0"
  }
  measure: qty_user {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
