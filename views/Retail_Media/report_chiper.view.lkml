


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
    type: sum
    sql: ${TABLE}.total_sale ;;
  }
}

view: data_chiper {

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
  dimension: quantity {
    type: number
    sql: quantity ;;
  }
  dimension: report_chiper__chiper {
    type: string
    hidden: yes
    sql: report_chiper__chiper ;;
  }
  measure: sales_usd {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.sales_usd ;;
  }
  dimension: store_id {
    type: string
    sql: CAST(store_id AS STRING) ;;
  }
}
