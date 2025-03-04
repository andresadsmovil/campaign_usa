explore: report_chiper {
  hidden: yes
  join: report_chiper__chiper {
    view_label: "Report Chiper: Chiper"
    sql: LEFT JOIN UNNEST(${report_chiper.chiper}) as report_chiper__chiper ;;
    relationship: one_to_many
  }
}

view: report_chiper {
  sql_table_name: `adsmovil-reports.looker_ml.report_chiper` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: chiper {
    hidden: yes
    sql: ${TABLE}.chiper ;;
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
    sql: ${TABLE}.End_Date ;;
  }
  dimension: n__mero_de_orden {
    type: string
    sql: ${TABLE}.N__mero_de_Orden ;;
  }
  dimension: n__mero_l__nea {
    type: string
    sql: ${TABLE}.N__mero_L__nea ;;
  }
  dimension: sale_model {
    type: string
    sql: ${TABLE}.Sale_Model ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Start_Date ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
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
  measure: total_sale {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.total_sale ;;
    value_format: "$#,##0"
  }
  measure: count_user {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.user_id ;;
  }
}

view: report_chiper__chiper {

  dimension: brand {
    type: string
    sql: brand ;;
  }
  dimension: category {
    type: string
    sql: category ;;
  }
  dimension: macro_category {
    type: string
    sql: macro_category ;;
  }
  dimension: report_chiper__chiper {
    type: string
    hidden: yes
    sql: report_chiper__chiper ;;
  }
  dimension: store_id {
    type: string
    sql: CAST(store_id AS STRING) ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
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
  measure: count_store {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.store_id ;;
  }
  measure: quantity {
    group_label: "Measures"
    type: count_distinct
    sql: ${TABLE}.quantity ;;
  }

}
