view: saleforce_validation_alerts {
  sql_table_name: `adsmovil-reports.looker_ml.saleforce_validation_alerts` ;;

  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension: name_join {
    type: string
    sql: ${TABLE}.name_join ;;
  }
  dimension: orden_id {
    type: string
    sql: ${TABLE}.orden_id ;;
  }
  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }
  dimension: product__product_name {
    type: string
    sql: ${TABLE}.Product__Product_Name ;;
  }
  dimension: product_join {
    type: string
    sql: ${TABLE}.product_join ;;
  }
  dimension: plataforma {
    type: string
    sql: ${TABLE}.plataforma ;;
  }
  measure: count {
    type: count
    drill_fields: [product__product_name]
  }
}
