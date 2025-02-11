view: final_master_table {
  sql_table_name: `adsmovil-reports.looker_ml.final_master_table` ;;


  dimension: identificador_master {
    type: string
    sql: ${TABLE}.Identificador_Master ;;
  }
  dimension: nombre_identificador {
    type: string
    sql: ${TABLE}.Nombre_Identificador ;;
  }
  measure: count {
    type: count
  }
  measure: rappi {
    group_label: "Measures"
    type: sum
    sql:  ${TABLE}.rappi;;
  }
  measure: farmatodo {
    group_label: "Measures"
    type: sum
    sql:  ${TABLE}.farmatodo;;
  }
  measure: locatel {
    group_label: "Measures"
    type: sum
    sql:  ${TABLE}.locatel;;
  }

}
