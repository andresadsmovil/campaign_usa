view: data_granular_turbo {
  sql_table_name: `adsmovil-reports.Adsmovil_Retail_Media.data_granular_turbo` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: advertiser_internal_id {
    type: number
    sql: ${TABLE}.advertiser_internal_id ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.date ;;
  }
  dimension: ean {
    type: number
    sql: ${TABLE}.ean ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
    html: <img src='{{ value }}' width='60' height='60'>;;
  }
  dimension: product {
    type: string
    sql: LOWER(${TABLE}.product) ;;
  }
  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
  dimension: vertical {
    type: string
    sql: ${TABLE}.vertical ;;
  }
  measure: sales {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.sales ;;
    value_format: "#,##0"
  }
  measure: quantity {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.quantity ;;
  }
  measure: sales_before {
    group_label: "Measures"
    type: sum
    sql: CASE WHEN  ${TABLE}.time = 'Before' THEN ${TABLE}.sales ELSE 0 END ;;
    value_format: "$#,##0"
  }
  measure: sales_after {
    group_label: "Measures"
    type: sum
    sql: CASE WHEN  ${TABLE}.time != 'Before' THEN ${TABLE}.sales ELSE 0 END ;;
    value_format: "$#,##0"
  }
  measure: avg_sales {
    group_label: "Measures"
    type: average
    sql: ${TABLE}.sales ;;
    value_format: "#,##0"
  }
  measure: count {
    type: count
  }
}
