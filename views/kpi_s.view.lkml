view: kpi_s {
  sql_table_name: `sources.kpi_s` ;;

  dimension: add_carr {
    type: number
    sql: ${TABLE}.add_carr ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: product_bought {
    type: number
    sql: ${TABLE}.product_bought ;;
  }
  dimension: products_view {
    type: number
    sql: ${TABLE}.products_view ;;
  }
  dimension_group: purchase {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.purchase_date ;;
  }
  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  dimension: unique_devices {
    type: number
    sql: ${TABLE}.unique_devices ;;
  }
  dimension: unique_devices_acum {
    type: number
    sql: ${TABLE}.unique_devices_acum ;;
  }
  measure: sum_sessions {
    group_label: "Measures"
    type: sum
    sql: ${sessions} ;;
    html: <h1 style="background-color: #FFF5EE; font-size: 36px; text-align: center;">{{value}}</h1>;;
  }
  measure: sum_product_bought {
    group_label: "Measures"
    type: sum
    sql: ${product_bought} ;;
    html: <h1 style="background-color: #FFF5EE; font-size: 36px; text-align: center;">{{value}}</h1>;;
  }
  measure: sum_products_view {
    group_label: "Measures"
    type: sum
    sql: ${product_bought} + ${products_view} + ${add_carr}  ;;
    html: <h1 style="background-color: #FFF5EE; font-size: 36px; text-align: center;">{{value}}</h1>;;
  }
  measure: sum_products_add {
    group_label: "Measures"
    type: sum
    sql: ${product_bought} + ${add_carr}  ;;
    html: <h1 style="background-color: #FFF5EE; font-size: 36px; text-align: center;">{{value}}</h1>;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, trademark_name]
  }

}
