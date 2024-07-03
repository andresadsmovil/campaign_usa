view: campaign_insights_table {
  sql_table_name: `looker_ml.campaign_insights_table` ;;

  dimension: _type {
    type: string
    sql: ${TABLE}._type ;;
  }
  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: percent_uniques {
    type: number
    sql: ${TABLE}.percent_uniques ;;
  }
  dimension: total_uniques {
    type: number
    sql: ${TABLE}.total_uniques ;;
  }
  dimension: uniques {
    type: number
    sql: ${TABLE}.uniques ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
