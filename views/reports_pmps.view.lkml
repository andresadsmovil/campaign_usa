view: reports_pmps {
  sql_table_name: `adsmovil-reports.looker_ml.reports_PMPs` ;;

  dimension: advertiser {
    type: string
    sql: ${TABLE}.Advertiser ;;
  }
  dimension: agency {
    type: string
    sql: ${TABLE}.Agency ;;
  }
  dimension: agency_cost {
    type: number
    sql: ${TABLE}.Agency_Cost ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: deal_ids {
    type: string
    sql: ${TABLE}.Deal_Ids ;;
  }
  dimension: deal_name {
    type: string
    sql: ${TABLE}.Deal_Name ;;
  }
  dimension: margin {
    type: number
    sql: ${TABLE}.Margin ;;
  }
  dimension: number_month {
    type: number
    sql: ${TABLE}.Month ;;
  }
  dimension: month {
    type: string
    sql:
          CASE WHEN ${number_month} = 1 THEN 'January'
               WHEN ${number_month} = 2 THEN 'Febrary'
               WHEN ${number_month} = 3 THEN 'March'
               WHEN ${number_month} = 4 THEN 'April'
               WHEN ${number_month} = 5 THEN 'May'
               WHEN ${number_month} = 6 THEN 'Jun'
               WHEN ${number_month} = 7 THEN 'July'
               WHEN ${number_month} = 8 THEN 'August'
               WHEN ${number_month} = 9 THEN 'September'
               WHEN ${number_month} = 10 THEN 'October'
               WHEN ${number_month} = 11 THEN 'November'
               WHEN ${number_month} = 12 THEN 'December'
               ELSE 'Validate'
          END;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: provider {
    type: string
    sql: ${TABLE}.Provider ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}.Revenue ;;
  }
  dimension: total_cost {
    type: number
    sql: ${TABLE}.Total_Cost ;;
  }
  measure: count {
    type: count
    drill_fields: [deal_name]
  }
  measure: sum_total_cost {
    group_label: "Measures"
    type: sum
    sql: ${total_cost} ;;
    value_format: "$#,##0"
  }
  measure: sum_margin {
    group_label: "Measures"
    type: sum
    sql: ${margin} ;;
    value_format: "$#,##0"
  }
  measure: sum_revenue {
    group_label: "Measures"
    type: sum
    sql: ${revenue} ;;
    value_format: "$#,##0"
  }
  measure: sum_agency_cost {
    group_label: "Measures"
    type: sum
    sql: ${agency_cost} ;;
    value_format: "$#,##0"
  }
  measure: sum_cost {
    group_label: "Measures"
    type: sum
    sql: ${cost} ;;
    value_format: "$#,##0"
  }
}
