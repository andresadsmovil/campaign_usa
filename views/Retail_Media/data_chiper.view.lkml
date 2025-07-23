view: data_chiper {
  sql_table_name: `adsmovil-reports.Adsmovil_Retail_Media.data_chiper` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: codigo_estado {
    type: string
    sql: ${TABLE}.codigo_estado ;;
  }
  dimension: codigo_municipio {
    type: string
    sql: ${TABLE}.codigo_municipio ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: delivered {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.deliveredDate ;;
  }
  dimension: deliveredatweek {
    type: string
    sql: ${TABLE}.deliveredatweek ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }
  dimension: macro_category {
    type: string
    sql: ${TABLE}.macro_category ;;
  }
  dimension: name_sku {
    type: string
    sql: ${TABLE}.name_sku ;;
  }
  dimension: store_address {
    type: string
    sql: ${TABLE}.store_address ;;
  }
  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
  dimension: store_id {
    type: number
    sql: ${TABLE}.store_ID ;;
  }
  dimension: location {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lon ;;
  }
  measure: sales_usd {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.sales_usd ;;
    value_format: "$#,##0"
  }
  measure: quantity {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.quantity ;;
  }
  measure: count_store {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.store_id ;;
  }
  measure: count {
    type: count
  }
}
