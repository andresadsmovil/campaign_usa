view: roas_report {
  sql_table_name: `adsmovil-farmatodo.sources.ROAS_report` ;;

  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }
  dimension: imp {
    type: number
    sql: ${TABLE}.imp ;;
  }
  dimension: inversion_total {
    type: number
    sql: ${TABLE}.inversion_total ;;
  }
  dimension: total_price_local {
    type: number
    sql: ${TABLE}.total_price_local ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  dimension: win_att {
    type: string
    sql: ${TABLE}.win_att ;;
  }
  measure: sum_inversion_total {
    group_label: "Measures"
    type: sum
    sql: ${inversion_total} ;;
  }
  measure: sum_total_price_local {
    group_label: "Measures"
    type: sum
    sql: ${total_price_local} ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, trademark_name]
  }

}
