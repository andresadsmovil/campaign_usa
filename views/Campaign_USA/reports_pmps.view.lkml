# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view

view: reports_pmps {
  sql_table_name: `looker_ml.reports_PMPs` ;;


  dimension: advertiser__advertiser {
    type: string
    sql: ${TABLE}.Advertiser ;;
  }
  dimension: agency__agency_name {
    type: string
    sql: ${TABLE}.Agency ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: deal_id {
    type: string
    sql: CAST(${TABLE}.dealId AS STRING) ;;
  }
  dimension: deal_name {
    type: string
    sql: ${TABLE}.dealName ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: saleforce {
    sql: ${TABLE}.saleforce ;;
  }
  dimension: cid {
    type: string
    sql: cid ;;
  }
  dimension: diff_days {
    type: number
    sql:  ${TABLE}.diff_days ;;
  }
  dimension: campaign_days {
    type: number
    sql:  ${TABLE}.campaign_days ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: End_Date ;;
  }
  dimension: reports_pmps__saleforce {
    type: string
    sql: reports_pmps__saleforce ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: Start_Date ;;
  }
  measure: count {
    type: count
    drill_fields: [deal_name, agency__agency_name]
  }
  measure: quantity {
    group_label: "Measures"
    type: max
    sql:quantity ;;
  }
  measure: total_sale {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.total_sale ;;
  }
  measure: media_cost {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.mediaCost ;;
    value_format: "$#,##0"
  }
  measure: spends {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.spends ;;
    value_format: "$#,##0"
  }
  measure: impressions {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.impressions ;;
  }
  measure: clicks {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.clicks ;;
  }

  measure: impressions_video_no_rewarded {
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${category} in ('Video No Rewarded') THEN ${TABLE}.impressions ELSE NULL END  ;;
  }

  measure: impressions_CTV_video{
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${category} in ('CTV Video') THEN  ${TABLE}.impressions ELSE NULL END  ;;
  }

  measure: impressions_display_INT_Rich_Media{
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${category} in ('Display INT/Rich Media') THEN  ${TABLE}.impressions ELSE NULL END  ;;
  }

  measure: impressions_display_standard{
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${category} in ('Display Standard') THEN  ${TABLE}.impressions ELSE NULL END  ;;
  }

  measure: impressions_Video_Rewardedd{
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${category} in ('Video Rewarded') THEN  ${TABLE}.impressions ELSE NULL END  ;;
  }


  measure: exchange_rate {
    group_label: "Measures"
    type: max
    sql: ${TABLE}.exchange_rate ;;
  }
  measure: vcr {
    group_label: "Measures"
    type: average
    sql: ${TABLE}.vcr ;;
    value_format: "0.00"
  }
}
