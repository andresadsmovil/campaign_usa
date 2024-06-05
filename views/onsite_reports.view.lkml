view: onsite_reports {
  sql_table_name: `adsmovil-farmatodo.sources.onsite_reports` ;;

  dimension: ads_spend {
    type: number
    sql: ${TABLE}.adSpend ;;
  }
  dimension: adsspend_estimation {
    type: number
    sql: ${TABLE}.adsspend_estimation ;;
  }
  dimension: adsspend_today {
    type: number
    sql: ${TABLE}.adsspend_today ;;
  }
  dimension: budget_amount {
    type: number
    sql: ${TABLE}.budgetAmount ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaignName ;;
    html: <H4 style="background-color: #0C3B6F; font-size: 20px; text-align: center;">{{value}}</H4>;;
  }
  dimension: charge_type {
    type: string
    sql: ${TABLE}.chargeType ;;
  }
  dimension: clicks_charged {
    type: number
    sql: ${TABLE}.clicksCharged ;;
  }
  dimension: cpc {
    type: number
    sql: ${TABLE}.CPC ;;
  }
  dimension: ctr {
    type: number
    sql: ${TABLE}.CTR ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }
  dimension: diff_date {
    type: number
    sql: ${TABLE}.diff_date ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.endDate ;;
    html: <H4 style="background-color: #0C3B6F; font-size: 20px; text-align: center;">{{value}}</H4>;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.imageURL;;
    html: "<img src='{{ value }}' width='100' height='100'>";;
  }
  dimension: impressions_total {
    type: number
    sql: ${TABLE}.impressionsTotal ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }
  dimension: purchases_amount {
    type: number
    sql: ${TABLE}.purchasesAmount ;;
  }
  dimension: purchases_quantity {
    type: number
    sql: ${TABLE}.purchasesQuantity ;;
  }
  dimension: roas {
    type: number
    sql: ${TABLE}.ROAS ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startDate ;;
    html: <H4 style="background-color: #0C3B6F; font-size: 20px; text-align: center;">{{value}}</H4>;;
  }
  dimension: target_roas {
    type: number
    sql: ${TABLE}.targetRoas ;;
  }
  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendorId ;;
  }
  measure: sum_ads_spend {
    group_label: "Measures"
    type: sum
    sql: ${ads_spend} ;;
  }
  measure: max_budget_amount {
    group_label: "Measures"
    type: max
    sql: ${budget_amount} ;;
  }
  measure: sum_impressions_total {
    group_label: "Measures"
    type: sum
    sql: ${impressions_total} ;;
  }
  measure: sum_purchases_amount {
    group_label: "Measures"
    type: sum
    sql: ${purchases_amount} ;;
  }
  measure: sum_purchases_quantity {
    group_label: "Measures"
    type: sum
    sql: ${purchases_quantity} ;;
  }
  measure: sum_roas {
    group_label: "Measures"
    type: sum
    sql: ${roas} ;;
  }
  measure: sum_click {
    group_label: "Measures"
    type: sum
    sql: ${clicks_charged} ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, campaign_name]
  }
}
