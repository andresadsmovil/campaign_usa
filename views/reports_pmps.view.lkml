# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
view: reports_pmps {
  sql_table_name: `looker_ml.reports_PMPs` ;;

  dimension: advertiser__advertiser {
    type: string
    sql: ${TABLE}.Advertiser__Advertiser ;;
  }
  dimension: agency__agency_name {
    type: string
    sql: ${TABLE}.Agency__Agency_Name ;;
  }
  dimension: cid {
    hidden: yes
    sql: ${TABLE}.cid ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
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
    type: number
    sql: ${TABLE}.dealId ;;
  }
  dimension: deal_name {
    type: string
    sql: ${TABLE}.dealName ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: media_cost {
    type: number
    sql: ${TABLE}.mediaCost ;;
  }
  dimension: spends {
    type: number
    sql: ${TABLE}.spends ;;
  }
  measure: count {
    type: count
    drill_fields: [deal_name, agency__agency_name]
  }
}

view: reports_pmps__cid {

  dimension: reports_pmps__cid {
    type: string
    sql: reports_pmps__cid ;;
  }
}
