view: implementation_platforms {
  sql_table_name: `adsmovil-reports.looker_ml.implementation_platforms` ;;

  dimension: agency__agency_name {
    type: string
    sql: ${TABLE}.Agency__Agency_Name ;;
  }
  dimension: creative_size {
    type: string
    sql: ${TABLE}.creative_size ;;
  }
  dimension: trafficker {
    type: string
    sql: ${TABLE}.Trafficker ;;
  }
  dimension: negotiated_price {
    type: number
    sql: ${TABLE}.Negotiated_Price ;;
  }

  dimension: average_cpm_ad_manager {
    type: number
    sql: ${TABLE}.average_CPM_ad_manager ;;
  }
  dimension: average_cpm_dv360 {
    type: number
    sql: ${TABLE}.average_CPM_dv360 ;;
  }
  dimension: flag_cpm {
    type: yesno
    sql: ${TABLE}.flag_cpm ;;
  }
  dimension: flag_product {
    type: yesno
    sql: ${TABLE}.flag_product ;;
  }
  dimension: average_cpm_lqdm {
    type: number
    sql: ${TABLE}.average_CPM_lqdm ;;
  }
  dimension: average_cpm_simplifi {
    type: number
    sql: ${TABLE}.average_CPM_simplifi ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.CID ;;
  }
  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }
  dimension: Product_Name {
    type: string
    sql: ${TABLE}.Product__Product_Name ;;
  }
  dimension: clicks_ad_manager {
    type: number
    sql: ${TABLE}.clicks_ad_manager ;;
  }
  dimension: clicks_dv360 {
    type: number
    sql: ${TABLE}.clicks_dv360 ;;
  }
  dimension: clicks_lqdm {
    type: number
    sql: ${TABLE}.clicks_lqdm ;;
  }
  dimension: clicks_simplifi {
    type: number
    sql: ${TABLE}.Clicks_simplifi ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: impressions_ad_manager {
    type: number
    sql: ${TABLE}.impressions_ad_manager ;;
  }
  dimension: impressions_dv360 {
    type: number
    sql: ${TABLE}.impressions_dv360 ;;
  }
  dimension: impressions_lqdm {
    type: number
    sql: ${TABLE}.impressions_lqdm ;;
  }
  dimension: impressions_simplifi {
    type: number
    sql: ${TABLE}.impressions_simplifi ;;
  }
  dimension: n__mero_de_orden {
    type: string
    sql: ${TABLE}.N__mero_de_Orden ;;
  }
  dimension: sale_model {
    type: string
    sql: ${TABLE}.Sale_Model ;;
  }
  dimension: Campaign_Name {
    type: string
    sql: ${TABLE}.Campaign_Name ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Start_Date ;;
  }
  dimension: total_active_view_measurable_impressions_ad_manager {
    type: number
    sql: ${TABLE}.total_active_view_measurable_impressions_ad_manager ;;
  }
  dimension: total_active_view_measurable_impressions_dv360 {
    type: number
    sql: ${TABLE}.total_active_view_measurable_impressions_dv360 ;;
  }
  dimension: total_sale {
    type: number
    sql: ${TABLE}.Total_Sale ;;
  }
  dimension: total_active_view_viewable_impressions_ad_manager {
    type: number
    sql: ${TABLE}.total_active_view_viewable_impressions_ad_manager ;;
  }
  dimension: total_active_view_viewable_impressions_dv360 {
    type: number
    sql: ${TABLE}.total_active_view_viewable_impressions_dv360 ;;
  }
  dimension: total_active_view_viewable_impressions_rate_ad_manager {
    type: number
    sql: ${TABLE}.total_active_view_viewable_impressions_rate_ad_manager ;;
  }
  dimension: total_active_view_viewable_impressions_rate_dv360 {
    type: number
    sql: ${TABLE}.total_active_view_viewable_impressions_rate_dv360 ;;
  }
  dimension: total_active_view_viewable_impressions_rate_simplifi {
    type: number
    sql: ${TABLE}.total_active_view_viewable_impressions_rate_simplifi ;;
  }
  dimension: total_cost_ad_manager {
    type: number
    sql: ${TABLE}.total_cost_ad_manager ;;
  }
  dimension: total_cost_dv360 {
    type: number
    sql: ${TABLE}.total_cost_dv360 ;;
  }
  dimension: total_cost_lqdm {
    type: number
    sql: ${TABLE}.total_cost_lqdm ;;
  }
  dimension: total_cost_simplifi {
    type: number
    sql: ${TABLE}.total_cost_simplifi ;;
  }
  dimension: video_complete_ad_manager {
    type: number
    sql: ${TABLE}.video_complete_ad_manager ;;
  }
  dimension: video_complete_dv360 {
    type: number
    sql: ${TABLE}.video_complete_dv360 ;;
  }
  dimension: video_complete_lqdm {
    type: number
    sql: ${TABLE}.video_complete_lqdm ;;
  }
  dimension: video_complete_simplifi {
    type: number
    sql: ${TABLE}.video_complete_simplifi ;;
  }
  dimension: video_first_quartile_ad_manager {
    type: number
    sql: ${TABLE}.video_first_quartile_ad_manager ;;
  }
  dimension: video_first_quartile_dv360 {
    type: number
    sql: ${TABLE}.video_first_quartile_dv360 ;;
  }
  dimension: video_first_quartile_lqdm {
    type: number
    sql: ${TABLE}.video_first_quartile_lqdm ;;
  }
  dimension: video_first_quartile_simplifi {
    type: number
    sql: ${TABLE}.video_first_quartile_simplifi ;;
  }
  dimension: video_midpoint_ad_manager {
    type: number
    sql: ${TABLE}.video_midpoint_ad_manager ;;
  }
  dimension: video_midpoint_dv360 {
    type: number
    sql: ${TABLE}.video_midpoint_dv360 ;;
  }
  dimension: video_midpoint_lqdm {
    type: number
    sql: ${TABLE}.video_midpoint_lqdm ;;
  }
  dimension: video_midpoint_simplifi {
    type: number
    sql: ${TABLE}.video_midpoint_simplifi ;;
  }
  dimension: video_start_ad_manager {
    type: number
    sql: ${TABLE}.video_start_ad_manager ;;
  }
  dimension: video_start_dv360 {
    type: number
    sql: ${TABLE}.video_start_dv360 ;;
  }
  dimension: video_start_lqdm {
    type: number
    sql: ${TABLE}.video_start_lqdm ;;
  }
  dimension: video_start_simplifi {
    type: number
    sql: ${TABLE}.video_start_simplifi ;;
  }
  dimension: video_third_quartile_ad_manager {
    type: number
    sql: ${TABLE}.video_third_quartile_ad_manager ;;
  }
  dimension: video_third_quartile_dv360 {
    type: number
    sql: ${TABLE}.video_third_quartile_dv360 ;;
  }
  dimension: video_third_quartile_lqdm {
    type: number
    sql: ${TABLE}.video_third_quartile_lqdm ;;
  }
  dimension: video_third_quartile_simplifi {
    type: number
    sql: ${TABLE}.video_third_quartile_simplifi ;;
  }
  dimension: impressions_bw {
    type: number
    sql: ${TABLE}.impressions_bw ;;
  }
  dimension: clicks_bw {
    type: number
    sql: ${TABLE}.clicks_bw ;;
  }
  dimension: income {
    type: number
    sql: ${TABLE}.Income ;;
  }
  dimension: video_plays_bw {
    type: number
    sql: ${TABLE}.video_plays_bw ;;
  }
  dimension: video_q1s_bw {
    type: number
    sql: ${TABLE}.video_q1s_bw ;;
  }
  dimension: video_midpoints_bw {
    type: number
    sql: ${TABLE}.video_midpoints_bw ;;
  }
  dimension: video_q3s_bw {
    type: number
    sql: ${TABLE}.video_q3s_bw ;;
  }
  dimension: video_completes_bw {
    type: number
    sql: ${TABLE}.video_completes_bw ;;
  }
  dimension: total_active_view_measurable_impressions_bw {
    type: number
    sql: ${TABLE}.total_active_view_measurable_impressions_bw ;;
  }
  dimension: total_active_view_viewable_impressions_bw {
    type: number
    sql: ${TABLE}.total_active_view_viewable_impressions_bw ;;
  }
  dimension: total_active_view_viewable_impressions_rate_bw {
    type: number
    sql: ${TABLE}.total_active_view_viewable_impressions_rate_bw ;;
  }
  dimension: average_CPM_bw {
    type: number
    sql: ${TABLE}.average_CPM_bw ;;
  }

  dimension: spend_bw {
    type: number
    sql: ${TABLE}.spend_bw ;;
  }
  dimension: grouped_margin {
    type: string
    sql: ${TABLE}.grouped_margin ;;
  }
  measure: count {
    type: count
    drill_fields: [agency__agency_name]
  }
  measure: sum_average_cpm_ad_manager {
    group_label: "Measures"
    type: max
    sql: ${average_cpm_ad_manager} ;;
    value_format: "#,##0"
    }
  measure: sum_average_cpm_dv360 {
    group_label: "Measures"
    type: max
    sql: ${average_cpm_dv360} ;;
    value_format: "#,##0"
  }
  measure: sum_average_cpm_lqdm {
    group_label: "Measures"
    type: max
    sql: ${average_cpm_lqdm} ;;
    value_format: "#,##0"
  }
  measure: sum_average_cpm_simplifi {
    group_label: "Measures"
    type: max
    sql: ${average_cpm_simplifi} ;;
    value_format: "#,##0"
  }
  measure: sum_clicks_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${clicks_ad_manager} ;;
  }
  measure: sum_clicks_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${clicks_dv360} ;;
  }
  measure: sum_clicks_lqdm {
    group_label: "Measures"
    type: sum
    sql: ${clicks_lqdm} ;;
  }
  measure: sum_clicks_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${clicks_simplifi} ;;
  }
  measure: sum_impressions_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${impressions_ad_manager} ;;
  }
  measure: sum_impressions_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${impressions_dv360} ;;
  }
  measure: sum_impressions_lqdm {
    group_label: "Measures"
    type: sum
    sql: ${impressions_lqdm} ;;
  }
  measure: sum_impressions_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${impressions_simplifi} ;;
  }
  measure: sum_total_active_view_measurable_impressions_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_measurable_impressions_ad_manager} ;;
  }
  measure: sum_total_active_view_measurable_impressions_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_measurable_impressions_dv360} ;;
  }
  measure: sum_total_active_view_viewable_impressions_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_viewable_impressions_ad_manager} ;;
  }
  measure: sum_total_active_view_viewable_impressions_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_viewable_impressions_dv360} ;;
  }
  measure: sum_total_active_view_viewable_impressions_rate_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_viewable_impressions_rate_ad_manager} ;;
  }
  measure: sum_total_active_view_viewable_impressions_rate_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_viewable_impressions_rate_dv360} ;;
  }
  measure: sum_total_active_view_viewable_impressions_rate_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_viewable_impressions_rate_simplifi} ;;
  }
  measure: sum_total_cost_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${total_cost_ad_manager} ;;
    value_format: "#,##0"
  }
  measure: sum_total_cost_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${total_cost_dv360} ;;
    value_format: "#,##0"
  }
  measure: sum_total_cost_lqdm {
    group_label: "Measures"
    type: sum
    sql: ${total_cost_lqdm} ;;
    value_format: "#,##0"
  }
  measure: sum_total_cost_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${total_cost_simplifi} ;;
    value_format: "#,##0"
  }
  measure: sum_video_complete_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${video_complete_ad_manager} ;;
  }
  measure: sum_video_complete_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${video_complete_dv360} ;;
  }
  measure: sum_video_complete_lqdm {
    group_label: "Measures"
    type: sum
    sql: ${video_complete_lqdm} ;;
  }
  measure: sum_video_complete_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${video_complete_simplifi} ;;
  }
  measure: sum_video_first_quartile_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${video_first_quartile_ad_manager} ;;
  }
  measure: sum_video_first_quartile_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${video_first_quartile_dv360} ;;
  }
  measure: sum_video_first_quartile_lqdm {
    group_label: "Measures"
    type: sum
    sql: ${video_first_quartile_lqdm} ;;
  }
  measure: sum_video_first_quartile_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${video_first_quartile_simplifi} ;;
  }
  measure: sum_video_third_quartile_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${video_third_quartile_ad_manager} ;;
  }
  measure: sum_video_third_quartile_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${video_third_quartile_dv360} ;;
  }
  measure: sum_video_third_quartile_lqdm {
    group_label: "Measures"
    type: sum
    sql: ${video_third_quartile_lqdm} ;;
  }
  measure: sum_video_third_quartile_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${video_third_quartile_simplifi} ;;
  }
  measure: sum_video_start_ad_manager {
    group_label: "Measures"
    type: sum
    sql: ${video_start_ad_manager} ;;
  }
  measure: sum_video_start_dv360 {
    group_label: "Measures"
    type: sum
    sql: ${video_start_dv360} ;;
  }
  measure: sum_video_start_simplifi {
    group_label: "Measures"
    type: sum
    sql: ${video_start_simplifi} ;;
  }
  measure: sum_video_start_lqdm {
    group_label: "Measures"
    type: sum
    sql: ${video_start_lqdm} ;;
  }
  measure: sum_impressions_bw {
    group_label: "Measures"
    type: sum
    sql: ${impressions_bw} ;;
  }
  measure: sum_clicks_bw {
    group_label: "Measures"
    type: sum
    sql: ${clicks_bw} ;;
  }
  measure: sum_video_plays_bw {
    group_label: "Measures"
    type: sum
    sql: ${video_plays_bw} ;;
  }
  measure: sum_video_q1s_bw {
    group_label: "Measures"
    type: sum
    sql: ${video_q1s_bw} ;;
  }
  measure: sum_video_midpoints_bw {
    group_label: "Measures"
    type: sum
    sql: ${video_midpoints_bw} ;;
  }
  measure: sum_video_q3s_bw {
    group_label: "Measures"
    type: sum
    sql: ${video_q3s_bw} ;;
  }
  measure: sum_video_completes_bw {
    group_label: "Measures"
    type: sum
    sql: ${video_completes_bw} ;;
  }

  measure: sum_total_active_view_measurable_impressions_bw {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_measurable_impressions_bw} ;;
  }
  measure: sum_total_active_view_viewable_impressions_bw {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_viewable_impressions_bw} ;;
  }
  measure: sum_total_active_view_viewable_impressions_rate_bw {
    group_label: "Measures"
    type: sum
    sql: ${total_active_view_viewable_impressions_rate_bw} ;;
  }
  measure: sum_spend_bw {
    group_label: "Measures"
    type: sum
    sql: ${spend_bw} ;;
    value_format: "#,##0"
  }
  measure: sum_income {
    group_label: "Measures"
    type: sum
    sql: ${income} ;;
    value_format: "#,##0"
  }
  measure: sum_average_CPM_bw {
    group_label: "Measures"
    type: max
    sql: ${average_CPM_bw} ;;
    value_format: "#,##0"
  }
  measure: sum_negotiated_price {
    group_label: "Measures"
    type: sum
    sql: ${negotiated_price} ;;
  }
  measure: sum_total_sale {
    group_label: "Measures"
    type: sum
    sql: ${total_sale} ;;
  }
}
