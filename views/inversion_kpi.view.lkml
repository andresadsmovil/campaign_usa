view: inversion_kpi {
  sql_table_name: `sources.inversion_kpi` ;;

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
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: corr {
    type: number
    sql: ${TABLE}.corr ;;
  }
  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: device_id {
    type: number
    sql: ${TABLE}.device_id ;;
  }
  dimension: imp {
    type: number
    sql: ${TABLE}.imp ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, trademark_name]
  }
    measure: inversion_total{
    group_label: "Measures"
    type: number
    sql: SUM((${cpc}*${clicks} + ${cpm}*${imp}/1000));;
  }
  measure: Impresiones {
    group_label: "Measures"
    type: sum
    sql: ${imp};;
    html: <h1 style="background-color: #FFF5EE; font-size: 36px; text-align: center;">{{value}}</h1>;;
  }
  measure: CPM {
    group_label: "Measures"
    type: max
    sql: ${cpm} ;;
  }
  measure: usuarios_impactados {
    group_label: "Measures"
    type: number
    sql: SUM(${device_id}) ;;
    html: <h1 style="background-color: #FFF5EE; font-size: 36px; text-align: center;">{{value}}</h1>;;
  }
  measure: Clicks {
    group_label: "Measures"
    type: sum
    sql: ${clicks} ;;
    html: <h1 style="background-color: #FFF5EE; font-size: 36px; text-align: center;">{{value}}</h1>;;
  }
  measure: CPC {
    group_label: "Measures"
    type: max
    sql: ${cpc} ;;
  }

}
