view: validation_alerts {
  sql_table_name: `looker_ml.validation_alerts` ;;

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }
  dimension: orden_id {
    type: string
    sql: ${TABLE}.orden_id ;;
  }
  dimension: product_join {
    type: string
    sql: ${TABLE}.product_join ;;
  }
  dimension: ias_placement_id {
    type: string
    sql: ${TABLE}.IAS_Placement_Id ;;
  }
  dimension: app_bundle {
    type: string
    sql: ${TABLE}.App_Bundle ;;
  }
  dimension: authentic_ads {
    type: number
    sql: ${TABLE}.Authentic_Ads ;;
  }
  dimension: block {
    type: number
    sql: ${TABLE}.Block ;;
  }
  dimension: invalid_traffic {
    type: number
    sql: ${TABLE}.Invalid_Traffic ;;
  }
  dimension: failed_ads {
    type: number
    sql: ${TABLE}.Failed_Ads ;;
  }
  dimension: blocks {
    type: number
    sql: ${TABLE}.Blocks ;;
  }
  dimension: requests {
    type: number
    sql: ${TABLE}.Requests ;;
  }
  dimension: brand_safety {
    type: number
    sql: ${TABLE}.Brand_Safety ;;
  }
  dimension: brand_suitable_ads {
    type: number
    sql: ${TABLE}.Brand_Suitable_Ads ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: delivery_site {
    type: string
    sql: ${TABLE}.Delivery_Site ;;
  }
  dimension: eligible_ads_for_invalid_traffic_detection {
    type: number
    sql: ${TABLE}.Eligible_Ads_For_Invalid_Traffic_Detection ;;
  }
  dimension: fraud_sivt_incidents {
    type: number
    sql: ${TABLE}.Fraud_SIVT_Incidents ;;
  }
  dimension: in_geo {
    type: number
    sql: ${TABLE}.In_Geo ;;
  }
  dimension: in_geo_ads {
    type: number
    sql: ${TABLE}.In_Geo_Ads ;;
  }
  dimension: ivt {
    type: number
    sql: ${TABLE}.IVT ;;
  }
  dimension: measured_impressions {
    type: number
    sql: ${TABLE}.Measured_Impressions ;;
  }
  dimension: monitored_ads {
    type: number
    sql: ${TABLE}.Monitored_Ads ;;
  }
  dimension: out_of_geo_incidents {
    type: number
    sql: ${TABLE}.Out_of_Geo_Incidents ;;
  }
  dimension: passed_ads {
    type: number
    sql: ${TABLE}.Passed_Ads ;;
  }
  dimension: placement_name {
    type: string
    sql: ${TABLE}.Placement_Name ;;
  }
  dimension: total_eligible_ads_for_brand_safety {
    type: number
    sql: ${TABLE}.Total_Eligible_Ads_For_Brand_Safety ;;
  }
  dimension: viewability {
    type: number
    sql: ${TABLE}.Viewability ;;
  }
  dimension: viewable_impressions {
    type: number
    sql: ${TABLE}.Viewable_Impressions ;;
  }
  dimension: benchmark_brand_safety {
    type: number
    sql: ${TABLE}.benchmark_Brand_Safety ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.total_impressions ;;
  }
  dimension: benchmark_ivt {
    type: number
    sql: ${TABLE}.benchmark_ivt ;;
  }
  dimension: benchmark_viewability {
    type: number
    sql: ${TABLE}.benchmark_viewability ;;
  }
  dimension: benchmark_block {
    type: number
    sql: ${TABLE}.benchmark_Block ;;
  }
  dimension: benchmark_in_geo {
    type: number
    sql: ${TABLE}.benchmark_In_Geo ;;
  }
  measure: count {
    type: count
    drill_fields: [placement_name, campaign_name, advertiser_name]
  }
  measure: sum_benchmark_brand_safety {
    group_label: "Measures"
    type: max
    value_format_name: percent_0
    sql: ${benchmark_brand_safety} ;;
  }
  measure: sum_benchmark_viewability {
    group_label: "Measures"
    type: max
    value_format_name: percent_0
    sql: ${benchmark_viewability} ;;
  }
  measure: sum_impressions {
    group_label: "Measures"
    type: sum
    sql: ${impressions} ;;
  }
  measure: sum_benchmark_block {
    group_label: "Measures"
    type: max
    value_format_name: percent_0
    sql: ${benchmark_block} ;;
  }
  measure: sum_benchmark_in_geo {
    group_label: "Measures"
    type: max
    value_format_name: percent_0
    sql: ${benchmark_in_geo} ;;
  }
  measure: sum_benchmark_ivt {
    group_label: "Measures"
    type: max
    value_format_name: percent_0
    sql: ${benchmark_ivt} ;;
  }
  measure: sum_authentic_ads {
    group_label: "Measures"
    type: sum
    sql: ${authentic_ads} ;;
  }
  measure: sum_monitored_ads {
    group_label: "Measures"
    type: sum
    sql: ${monitored_ads} ;;
  }
  measure: sum_measured_impressions {
    group_label: "Measures"
    type: sum
    sql: ${measured_impressions} ;;
  }
  measure: sum_viewable_impressions {
    group_label: "Measures"
    type: sum
    sql: ${viewable_impressions} ;;
  }
  measure: sum_fraud_sivt_incidents {
    group_label: "Measures"
    type: sum
    sql: ${fraud_sivt_incidents} ;;
  }
  measure: sum_in_geo_ads {
    group_label: "Measures"
    type: sum
    sql: ${in_geo_ads} ;;
  }
  measure: sum_brand_suitable_ads {
    group_label: "Measures"
    type: sum
    sql: ${brand_suitable_ads} ;;
  }
  measure: sum_out_of_geo_incidents {
    group_label: "Measures"
    type: sum
    sql: ${out_of_geo_incidents} ;;
  }
  measure: sum_requests {
    group_label: "Measures"
    type: sum
    sql: ${requests} ;;
  }
  measure: sum_blocks {
    group_label: "Measures"
    type: sum
    sql: ${blocks} ;;
  }
  measure: sum_passed_Ads {
    group_label: "Measures"
    type: sum
    sql: ${passed_ads} ;;
  }
  measure: sum_total_eligible_ads_for_brand_safety {
    group_label: "Measures"
    type: sum
    sql: ${total_eligible_ads_for_brand_safety} ;;
  }
  measure: sum_eligible_ads_for_invalid_traffic_detection {
    group_label: "Measures"
    type: sum
    sql: ${eligible_ads_for_invalid_traffic_detection} ;;
  }
  measure: sum_brand_safety {
    group_label: "Measures"
    type: average
    value_format_name: percent_0
    sql: ${brand_safety} ;;
  }
  measure: sum_ivt {
    group_label: "Measures"
    type: average
    value_format_name: percent_0
    sql: ${ivt} ;;
  }
  measure: sum_viewability {
    group_label: "Measures"
    type: average
    value_format_name: percent_0
    sql: ${viewability} ;;
  }
  measure: sum_in_geo {
    group_label: "Measures"
    type: average
    value_format_name: percent_0
    sql: ${in_geo} ;;
  }
  measure: sum_block {
    group_label: "Measures"
    type: average
    value_format_name: percent_0
    sql: ${block} ;;
  }
  measure: sum_invalid_traffic {
    group_label: "Measures"
    type: sum
    sql: ${invalid_traffic} ;;
  }
  measure: sum_failed_ads {
    group_label: "Measures"
    type: sum
    sql: ${failed_ads} ;;
  }
}
