# The name of this view in Looker is "Siparis Detay"
view: siparis_detay {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `komtas-workshop.excel_import.Siparis_Detay` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Ndirim" in Explore.

  measure: indirim {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.__ndirim ;;
  }

  dimension: gp {
    type: number
    sql: ${TABLE}.GP ;;
  }

  measure: miktar {
    type: sum
    sql: ${TABLE}.Miktar ;;
  }

  measure: satis {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.Satis ;;
  }

  measure: satis_maliyeti {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.Satis_Maliyeti ;;
  }

  dimension: siparis_no {
    type: number
    sql: ${TABLE}.Siparis_No ;;
  }

  dimension: unique_id2 {
    type: number
    value_format_name: id
    sql: ${TABLE}.unique_id2 ;;
  }

  dimension: urun_no {
    type: number
    sql: ${TABLE}.Urun_No ;;
  }
  measure: count {
    type: count
  }
}
