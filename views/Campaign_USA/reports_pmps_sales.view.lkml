view: reports_pmps_sales {
  sql_table_name: `adsmovil-reports.looker_ml.reports_PMPs_sales` ;;

  dimension: advertiser__advertiser {
    type: string
    sql: ${TABLE}.Advertiser__Advertiser ;;
  }
  dimension: agency {
    type: string
    sql: ${TABLE}.Agency ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.CID ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: seller {
    type: string
    sql: ${TABLE}.vendedor ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: dealid {
    type: number
    value_format_name: id
    sql: ${TABLE}.dealid ;;
  }
  dimension: dealname {
    type: string
    sql: ${TABLE}.dealname ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.End_Date ;;
  }
  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Start_Date ;;
  }
  measure: revenue {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.revenue ;;
    value_format: "$#,##0"
  }
  measure: quantity {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.quantity ;;
  }
  measure: total_Sale {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.total_Sale ;;
  }
  measure: count {
    type: count
    drill_fields: [dealname, product_name]
  }
}
