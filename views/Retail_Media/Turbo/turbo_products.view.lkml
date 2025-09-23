view: turbo_products {
  sql_table_name: `adsmovil-retailmedia-storage.Rappi_turbo.turbo_products` ;;

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
  dimension: ean {
    type: number
    sql: ${TABLE}.ean ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }
  dimension: maker {
    type: string
    sql: ${TABLE}.maker ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: stock_available {
    type: yesno
    sql: ${TABLE}.stock_available ;;
  }
  dimension: trademark {
    type: string
    sql: ${TABLE}.trademark ;;
  }
  dimension: url_images {
    type: string
    sql: ${TABLE}.url_images ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
