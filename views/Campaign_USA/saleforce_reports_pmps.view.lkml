view: saleforce_reports_pmps {
  sql_table_name: `adsmovil-reports.looker_ml.saleforce_reports_PMPs` ;;

  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.End_Date ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Start_Date ;;
  }
  dimension: deal_id {
    type: number
    primary_key: yes
    sql: CAST(${TABLE}.id_deal AS STRING) ;;
  }
  measure: quantity {
    type: sum
    sql: ${TABLE}.quantity ;;
  }
  measure: total_sale {
    type: sum
    sql: ${TABLE}.total_sale ;;
    value_format: "$#,##0"
  }
  measure: count {
    type: count
  }
}
