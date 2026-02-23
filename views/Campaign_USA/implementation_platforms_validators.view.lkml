view: implementation_platforms_validators {
  sql_table_name: `adsmovil-reports.looker_ml.implementation_platforms_validators` ;;

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.Campaign_Name ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: n__mero_de_orden {
    type: string
    sql: ${TABLE}.N__mero_de_Orden ;;
  }
  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
  measure: impressions_bw {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions_bw ;;
  }
  measure: impressions_dcm {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions_dcm ;;
  }
  measure: impressions_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions_dv360 ;;
  }
  measure: impressions_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions_ad_manager ;;
  }
  measure: impressions_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions_simplifi ;;
  }
  measure: impressions_total {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions_total ;;
  }
  measure: discrepancia {
    group_label: "Measures"
    type: average
    sql: ${TABLE}.discrepancia ;;
  }
}
