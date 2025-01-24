view: onsite_reports_banner_products {
  sql_table_name: `adsmovil-farmatodo.sources.onsite_reports_banner_products` ;;

  dimension: ad_revenue {
    type: number
    sql: ${TABLE}.ad_revenue ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaignName ;;
  }
  dimension: advertiser_internal_id {
    type: string
    sql: CAST(${TABLE}.advertiser_internal_id  AS STRING);;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension: cid_campaign_name {
    type: string
    sql: ${TABLE}.cid_campaign_name ;;
  }
  dimension: clicks_total {
    type: number
    sql: ${TABLE}.clicks_total ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
    html: <img src='{{ value }}' width='50' height='50'>;;
  }
  dimension: impressions_total {
    type: number
    sql: ${TABLE}.impressions_total ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: product_sku {
    type: string
    sql: ${TABLE}.product_sku ;;
  }
  dimension: retailer {
    type: string
    sql: ${TABLE}.retailer ;;
  }
  measure: count {
    type: count
    drill_fields: [cid_campaign_name, name, campaign_name]
  }
  measure: sales_revenue {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.sales_revenue ;;
  }
  measure: conversion_total {
    group_label: "Measures"
    type: sum
    sql: ${TABLE}.conversion_total ;;
  }
}
