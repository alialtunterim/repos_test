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

  dimension: __ndirim {
    type: number
    sql: ${TABLE}.__ndirim ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

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

  dimension: satis_maliyeti {
    type: number
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
