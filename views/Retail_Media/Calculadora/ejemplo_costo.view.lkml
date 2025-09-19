view: ejemplo_costo {
  sql_table_name: `adsmovil-reports.looker_ml.ejemplo_costo` ;;

  dimension: account_advertiser_id {
    type: number
    sql: ${TABLE}.account_advertiser_id ;;
  }
  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: cp1pd {
    type: number
    sql: ${TABLE}.cp1pd ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }
  dimension: cps {
    type: number
    sql: ${TABLE}.cps ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: id_1pd {
    type: string
    sql: ${TABLE}.id_1pd ;;
  }
  dimension: imp {
    type: number
    sql: ${TABLE}.imp ;;
  }
  dimension: numero_linea {
    type: string
    sql: ${TABLE}.numero_linea ;;
  }
  dimension: segment_id {
    type: string
    sql: ${TABLE}.segment_id ;;
  }
  dimension: segment_name {
    type: string
    sql: ${TABLE}.segment_name ;;
  }
  measure: count {
    type: count
    drill_fields: [segment_name, campaign_name]
  }
}
