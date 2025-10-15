view: data_category_turbo {
  sql_table_name: `adsmovil-reports.Adsmovil_Retail_Media.data_category_turbo` ;;

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
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
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
  measure: share {
    group_label: "Measures"
    type: average
    sql: ${TABLE}.share ;;
    value_format_name: "percent_2"
  }
  measure: new {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.news ;;
  }
  measure: Frequent {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.Frequent ;;
  }
  measure: Orders {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.Orders ;;
  }
  measure: count {
    type: count
  }
}
