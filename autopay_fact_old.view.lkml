view: autopay_fact_old {
  sql_table_name: IDW_DEV.AUTOPAY_FACT_OLD ;;

  dimension: autopaymentid {
    type: string
    sql: ${TABLE}.AUTOPAYMENTID ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CUSTOMER_ID ;;
  }

  dimension: date_diff {
    type: string
    sql: ${TABLE}.DATE_DIFF ;;
  }

  dimension_group: email1 {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.EMAIL1_DATE ;;
  }

  dimension_group: email2 {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.EMAIL2_DATE ;;
  }

  dimension_group: email3 {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.EMAIL3_DATE ;;
  }

  dimension_group: entered_tool {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.ENTERED_TOOL_DATE ;;
  }

  dimension: invoice_date_id {
    type: string
    sql: ${TABLE}.INVOICE_DATE_ID ;;
  }

  dimension_group: last_verified {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.LAST_VERIFIED_DATE ;;
  }

  dimension_group: license_effective {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.LICENSE_EFFECTIVE_DATE ;;
  }

  dimension_group: license_expiration {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.LICENSE_EXPIRATION_DATE ;;
  }

  dimension: num_days_before_exp {
    type: string
    sql: ${TABLE}.NUM_DAYS_BEFORE_EXP ;;
  }

  dimension_group: prev_license_exp {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.PREV_LICENSE_EXP_DATE ;;
  }

  dimension: provider_cnt {
    type: string
    sql: ${TABLE}.PROVIDER_CNT ;;
  }

  dimension: salesorderdetailid {
    type: string
    sql: ${TABLE}.SALESORDERDETAILID ;;
  }

  dimension_group: verified {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.VERIFIED_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
