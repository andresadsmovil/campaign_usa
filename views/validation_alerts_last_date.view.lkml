view: validation_alerts_last_date {
  sql_table_name: `looker_ml.validation_alerts_last_date` ;;

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: orden_id {
    type: string
    sql: ${TABLE}.orden_id ;;
  }
  dimension: flag_alert {
    type: string
    sql: ${TABLE}.flag_alert ;;
  }
  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }
  dimension: flag_block {
    type: string
    sql: ${TABLE}.flag_Block ;;
  }
  dimension: flag_impressions {
    type: string
    sql: ${TABLE}.flag_impressions ;;
  }
  dimension: last_impressions {
    type: string
    sql: ${TABLE}.last_impressions ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: min_date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.min_date ;;
  }
  dimension: flag_brand_safety {
    type: string
    sql: ${TABLE}.flag_Brand_Safety ;;
  }
  dimension: flag_in_geo {
    type: string
    sql: ${TABLE}.flag_In_Geo ;;
  }
  dimension: flag_ivt {
    type: string
    sql: ${TABLE}.flag_ivt ;;
  }
  dimension: flag_viewability {
    type: string
    sql: ${TABLE}.flag_viewability ;;
  }
  dimension: last_block {
    type: number
    sql: ${TABLE}.last_Block ;;
  }
  dimension: last_brand_safety {
    type: number
    sql: ${TABLE}.last_Brand_Safety ;;
  }
  dimension: last_in_geo {
    type: number
    sql: ${TABLE}.last_In_Geo ;;
  }
  dimension: last_ivt {
    type: number
    sql: ${TABLE}.last_IVT ;;
  }
  dimension: last_viewability {
    type: number
    sql: ${TABLE}.last_Viewability ;;
  }
  dimension: placement_name {
    type: string
    sql: ${TABLE}.Placement_Name ;;
  }
  measure: count {
    type: count
    drill_fields: [placement_name, campaign_name]
  }
  measure: sum_flag_alert {
    group_label: "Measures"
    type: sum
    sql: ${flag_alert} ;;
  }
  measure: sum_flag_block {
    group_label: "Measures"
    type: sum
    sql: ${flag_block} ;;
  }
  measure: sum_flag_brand_safety {
    group_label: "Measures"
    type: sum
    sql: ${flag_brand_safety} ;;
  }
  measure: sum_flag_in_geo {
    group_label: "Measures"
    type: sum
    sql: ${flag_in_geo} ;;
  }
  measure: sum_flag_ivt {
    group_label: "Measures"
    type: sum
    sql: ${flag_ivt} ;;
  }
  measure: sum_flag_viewability {
    group_label: "Measures"
    type: sum
    sql: ${flag_viewability} ;;
  }
  measure: sum_last_block {
    group_label: "Measures"
    type: sum
    value_format_name: percent_0
    sql: ${last_block} ;;
  }
  measure: sum_last_brand_safety {
    group_label: "Measures"
    type: sum
    value_format_name: percent_0
    sql: ${last_brand_safety} ;;
  }
  measure: sum_last_in_geo {
    group_label: "Measures"
    type: sum
    value_format_name: percent_0
    sql: ${last_in_geo} ;;
  }
  measure: sum_last_ivt {
    group_label: "Measures"
    type: sum
    value_format_name: percent_0
    sql: ${last_ivt} ;;
  }
  measure: sum_last_viewability {
    group_label: "Measures"
    type: sum
    value_format_name: percent_0
    sql: ${last_viewability} ;;
  }
  measure: sum_last_impressions {
    group_label: "Measures"
    type: sum
    sql: ${last_impressions} ;;
  }
  measure: distinct_campaigns {
    type: count_distinct
    sql: ${campaign_name} ;;
  }
  measure: distinct_placement_name {
    type: count_distinct
    sql: ${placement_name} ;;
  }

  # Medida para contar campañas únicas con flag
  measure: validation_alerts_last_date_distinct_block_campaigns {
    type: count_distinct
    sql: CASE WHEN ${flag_block} = 'Alert' THEN ${campaign_name} ELSE NULL END ;;
  }

  measure: validation_alerts_last_date_distinct_brand_safety_campaigns {
    type: count_distinct
    sql: CASE WHEN ${flag_brand_safety} = 'Alert' THEN ${campaign_name} ELSE NULL END ;;
  }

  measure: validation_alerts_last_date_distinct_In_Geo_campaigns {
    type: count_distinct
    sql: CASE WHEN ${flag_in_geo} = 'Alert' THEN ${campaign_name} ELSE NULL END ;;
  }

  measure: validation_alerts_last_date_distinct_ivt_campaigns {
    type: count_distinct
    sql: CASE WHEN ${flag_ivt} = 'Alert' THEN ${campaign_name} ELSE NULL END ;;
  }

  measure: validation_alerts_last_date_distinct_viewability_campaigns {
    type: count_distinct
    sql: CASE WHEN ${flag_viewability} = 'Alert' THEN ${campaign_name} ELSE NULL END ;;
  }

  measure: validation_alerts_last_date_distinct_alert_campaigns {
   type: count_distinct
    sql: CASE WHEN ${flag_alert} = 'Alert' THEN ${campaign_name} ELSE NULL END ;;
   }

}
