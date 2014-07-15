class CreateKgDatawarehouseDateDimensions < ActiveRecord::Migration
  def change
    execute "CREATE SCHEMA IF NOT EXISTS datawarehouse"
    unless ActiveRecord::Base.connection.table_exists? 'datawarehouse.kg_datawarehouse_date_dimensions'
      create_table "datawarehouse.kg_datawarehouse_date_dimensions", primary_key: :date_key  do |t|
        t.date      :full_date
        t.integer   :day_of_week
        t.integer   :day_num_in_month
        t.integer   :day_num_in_year
        t.integer   :day_num_overall
        t.string    :day_name
        t.string    :day_abbrev
        t.string    :weekday_flag
        t.boolean   :is_weekday
        t.boolean   :is_weekend
        t.integer   :week_num_in_year
        t.integer   :week_num_overall
        t.date      :week_begin_date
        t.integer   :week_begin_date_key
        t.integer   :month
        t.integer   :month_num_overall
        t.string    :month_name
        t.string    :month_abbrev
        t.integer   :quarter
        t.integer   :year
        t.integer   :yearmo
        t.integer   :fiscal_month
        t.integer   :fiscal_quarter
        t.integer   :fiscal_year
        t.string    :last_day_in_month_flag
        t.boolean   :is_last_day_in_month
        t.date      :same_day_year_ago_date
      end
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :full_date, :name => :kg_dw_dd_full_date
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :day_of_week, :name => :kg_dw_dd_day_of_week
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :day_num_in_month, :name => :kg_dw_dd_day_num_in_month
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :day_num_in_year, :name => :kg_dw_dd_day_num_in_year
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :day_num_overall, :name => :kg_dw_dd_day_num_overall
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :day_name, :name => :kg_dw_dd_day_name
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :day_abbrev, :name => :kg_dw_dd_day_abbrev
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :weekday_flag, :name => :kg_dw_dd_weekday_flag
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :is_weekday, :name => :kg_dw_dd_is_weekday
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :is_weekend, :name => :kg_dw_dd_is_weekend
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :week_num_in_year, :name => :kg_dw_dd_week_num_in_year
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :week_num_overall, :name => :kg_dw_dd_week_num_overall
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :week_begin_date, :name => :kg_dw_dd_week_begin_date
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :week_begin_date_key, :name => :kg_dw_dd_week_begin_date_key
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :month, :name => :kg_dw_dd_month
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :month_num_overall, :name => :kg_dw_dd_month_num_overall
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :month_name, :name => :kg_dw_dd_month_name
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :month_abbrev, :name => :kg_dw_dd_month_abbrev
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :quarter, :name => :kg_dw_dd_quarter
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :year, :name => :kg_dw_dd_year
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :yearmo, :name => :kg_dw_dd_yearmo
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :fiscal_month, :name => :kg_dw_dd_fiscal_month
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :fiscal_quarter, :name => :kg_dw_dd_fiscal_quarter
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :fiscal_year, :name => :kg_dw_dd_fiscal_year
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :last_day_in_month_flag, :name => :kg_dw_dd_last_day_in_month_flag
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :is_last_day_in_month, :name => :kg_dw_dd_is_last_day_in_month
      add_index "datawarehouse.kg_datawarehouse_date_dimensions", :same_day_year_ago_date, :name => :kg_dw_dd_same_day_year_ago_date
      
      create_table "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", primary_key: :time_of_day_key  do |t|
        t.time      :full_time_of_day
        t.integer   :hour_24
        t.integer   :hour # duplicate of hour_24
        t.integer   :hour_12
        t.string    :hour_24_zero_padded
        t.string    :hour_zero_padded # duplicate of hour_24_zero_padded
        t.string    :hour_12_zero_padded
        t.string    :hour_minute_24
        t.string    :hour_minute # duplicate of hour_minute_24
        t.string    :hour_minute_12
        t.string    :hour_minute_second_24
        t.string    :hour_minute_second # duplicate of hour_minute_second_24
        t.string    :hour_minute_second_12
        t.string    :hour_minute_24_zero_padded
        t.string    :hour_minute_zero_padded # duplicate of hour_minute_24_zero_padded
        t.string    :hour_minute_12_zero_padded
        t.string    :hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_zero_padded # duplicate of hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_12_zero_padded
        t.integer   :minute
        t.string    :minute_zero_padded
        t.integer   :minutes_since_midnight
        t.integer   :second
        t.string    :second_zero_padded
        t.integer   :seconds_since_midnight
        t.string    :am_pm
      end
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :full_time_of_day, :name => :kg_dw_todh_last_day_in_month_flag
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_24, :name => :kg_dw_todh_hour_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour, :name => :kg_dw_todh_hour
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_12, :name => :kg_dw_todh_hour_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_24_zero_padded, :name => :kg_dw_todh_hour_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_zero_padded, :name => :kg_dw_todh_hour_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_12_zero_padded, :name => :kg_dw_todh_hour_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_24, :name => :kg_dw_todh_hour_minute_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute, :name => :kg_dw_todh_hour_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_12, :name => :kg_dw_todh_hour_minute_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_second_24, :name => :kg_dw_todh_hour_minute_second_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_second, :name => :kg_dw_todh_hour_minute_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_second_12, :name => :kg_dw_todh_hour_minute_second_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_24_zero_padded, :name => :kg_dw_todh_hour_minute_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_zero_padded, :name => :kg_dw_todh_hour_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_12_zero_padded, :name => :kg_dw_todh_hour_minute_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_second_24_zero_padded, :name => :kg_dw_todh_hour_minute_second_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_second_zero_padded, :name => :kg_dw_todh_hour_minute_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :hour_minute_second_12_zero_padded, :name => :kg_dw_todh_hour_minute_second_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :minute, :name => :kg_dw_todh_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :minute_zero_padded, :name => :kg_dw_todh_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :minutes_since_midnight, :name => :kg_dw_todh_minutes_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :second, :name => :kg_dw_todh_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :second_zero_padded, :name => :kg_dw_todh_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :seconds_since_midnight, :name => :kg_dw_todh_seconds_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_dimensions", :am_pm, :name => :kg_dw_todh_am_pm
      
      create_table "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", primary_key: :time_of_day_key  do |t|
        t.time      :full_time_of_day
        t.integer   :hour_24
        t.integer   :hour # duplicate of hour_24
        t.integer   :hour_12
        t.string    :hour_24_zero_padded
        t.string    :hour_zero_padded # duplicate of hour_24_zero_padded
        t.string    :hour_12_zero_padded
        t.string    :hour_minute_24
        t.string    :hour_minute # duplicate of hour_minute_24
        t.string    :hour_minute_12
        t.string    :hour_minute_second_24
        t.string    :hour_minute_second # duplicate of hour_minute_second_24
        t.string    :hour_minute_second_12
        t.string    :hour_minute_24_zero_padded
        t.string    :hour_minute_zero_padded # duplicate of hour_minute_24_zero_padded
        t.string    :hour_minute_12_zero_padded
        t.string    :hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_zero_padded # duplicate of hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_12_zero_padded
        t.integer   :minute
        t.string    :minute_zero_padded
        t.integer   :minutes_since_midnight
        t.integer   :second
        t.string    :second_zero_padded
        t.integer   :seconds_since_midnight
        t.string    :am_pm
      end
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :full_time_of_day, :name => :kg_dw_todm_last_day_in_month_flag
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_24, :name => :kg_dw_todm_hour_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour, :name => :kg_dw_todm_hour
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_12, :name => :kg_dw_todm_hour_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_24_zero_padded, :name => :kg_dw_todm_hour_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_zero_padded, :name => :kg_dw_todm_hour_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_12_zero_padded, :name => :kg_dw_todm_hour_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_24, :name => :kg_dw_todm_hour_minute_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute, :name => :kg_dw_todm_hour_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_12, :name => :kg_dw_todm_hour_minute_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_second_24, :name => :kg_dw_todm_hour_minute_second_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_second, :name => :kg_dw_todm_hour_minute_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_second_12, :name => :kg_dw_todm_hour_minute_second_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_24_zero_padded, :name => :kg_dw_todm_hour_minute_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_zero_padded, :name => :kg_dw_todm_hour_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_12_zero_padded, :name => :kg_dw_todm_hour_minute_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_second_24_zero_padded, :name => :kg_dw_todm_hour_minute_second_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_second_zero_padded, :name => :kg_dw_todm_hour_minute_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :hour_minute_second_12_zero_padded, :name => :kg_dw_todm_hour_minute_second_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :minute, :name => :kg_dw_todm_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :minute_zero_padded, :name => :kg_dw_todm_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :minutes_since_midnight, :name => :kg_dw_todm_minutes_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :second, :name => :kg_dw_todm_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :second_zero_padded, :name => :kg_dw_todm_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :seconds_since_midnight, :name => :kg_dw_todm_seconds_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_dimensions", :am_pm, :name => :kg_dw_todm_am_pm
      
      create_table "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", primary_key: :time_of_day_key  do |t|
        t.time      :full_time_of_day
        t.integer   :hour_24
        t.integer   :hour # duplicate of hour_24
        t.integer   :hour_12
        t.string    :hour_24_zero_padded
        t.string    :hour_zero_padded # duplicate of hour_24_zero_padded
        t.string    :hour_12_zero_padded
        t.string    :hour_minute_24
        t.string    :hour_minute # duplicate of hour_minute_24
        t.string    :hour_minute_12
        t.string    :hour_minute_second_24
        t.string    :hour_minute_second # duplicate of hour_minute_second_24
        t.string    :hour_minute_second_12
        t.string    :hour_minute_24_zero_padded
        t.string    :hour_minute_zero_padded # duplicate of hour_minute_24_zero_padded
        t.string    :hour_minute_12_zero_padded
        t.string    :hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_zero_padded # duplicate of hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_12_zero_padded
        t.integer   :minute
        t.string    :minute_zero_padded
        t.integer   :minutes_since_midnight
        t.integer   :second
        t.string    :second_zero_padded
        t.integer   :seconds_since_midnight
        t.string    :am_pm
      end
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :full_time_of_day, :name => :kg_dw_tods_last_day_in_month_flag
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_24, :name => :kg_dw_tods_hour_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour, :name => :kg_dw_tods_hour
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_12, :name => :kg_dw_tods_hour_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_24_zero_padded, :name => :kg_dw_tods_hour_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_zero_padded, :name => :kg_dw_tods_hour_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_12_zero_padded, :name => :kg_dw_tods_hour_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_24, :name => :kg_dw_tods_hour_minute_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute, :name => :kg_dw_tods_hour_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_12, :name => :kg_dw_tods_hour_minute_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_second_24, :name => :kg_dw_tods_hour_minute_second_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_second, :name => :kg_dw_tods_hour_minute_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_second_12, :name => :kg_dw_tods_hour_minute_second_12
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_24_zero_padded, :name => :kg_dw_tods_hour_minute_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_zero_padded, :name => :kg_dw_tods_hour_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_12_zero_padded, :name => :kg_dw_tods_hour_minute_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_second_24_zero_padded, :name => :kg_dw_tods_hour_minute_second_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_second_zero_padded, :name => :kg_dw_tods_hour_minute_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :hour_minute_second_12_zero_padded, :name => :kg_dw_tods_hour_minute_second_12_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :minute, :name => :kg_dw_tods_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :minute_zero_padded, :name => :kg_dw_tods_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :minutes_since_midnight, :name => :kg_dw_tods_minutes_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :second, :name => :kg_dw_tods_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :second_zero_padded, :name => :kg_dw_tods_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :seconds_since_midnight, :name => :kg_dw_tods_seconds_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_dimensions", :am_pm, :name => :kg_dw_tods_am_pm
      
      create_table "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", primary_key: :time_of_day_key  do |t|
        t.integer   :hour_24
        t.integer   :hour # duplicate of hour_24
        t.string    :hour_24_zero_padded
        t.string    :hour_zero_padded # duplicate of hour_24_zero_padded
        t.string    :hour_minute_24
        t.string    :hour_minute # duplicate of hour_minute_24
        t.string    :hour_minute_second_24
        t.string    :hour_minute_second # duplicate of hour_minute_second_24
        t.string    :hour_minute_24_zero_padded
        t.string    :hour_minute_zero_padded # duplicate of hour_minute_24_zero_padded
        t.string    :hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_zero_padded # duplicate of hour_minute_second_24_zero_padded
        t.integer   :minute
        t.string    :minute_zero_padded
        t.integer   :minutes_since_midnight
        t.integer   :second
        t.string    :second_zero_padded
        t.integer   :seconds_since_midnight
      end
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_24, :name => :kg_dw_todhe_hour_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour, :name => :kg_dw_todhe_hour
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_24_zero_padded, :name => :kg_dw_todhe_hour_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_zero_padded, :name => :kg_dw_todhe_hour_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_minute_24, :name => :kg_dw_todhe_hour_minute_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_minute, :name => :kg_dw_todhe_hour_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_minute_second_24, :name => :kg_dw_todhe_hour_minute_second_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_minute_second, :name => :kg_dw_todhe_hour_minute_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_minute_24_zero_padded, :name => :kg_dw_todhe_hour_minute_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_minute_zero_padded, :name => :kg_dw_todhe_hour_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_minute_second_24_zero_padded, :name => :kg_dw_todhe_hour_minute_second_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :hour_minute_second_zero_padded, :name => :kg_dw_todhe_hour_minute_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :minute, :name => :kg_dw_todhe_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :minute_zero_padded, :name => :kg_dw_todhe_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :minutes_since_midnight, :name => :kg_dw_todhe_minutes_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :second, :name => :kg_dw_todhe_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :second_zero_padded, :name => :kg_dw_todhe_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_hours_expanded_dimensions", :seconds_since_midnight, :name => :kg_dw_todhe_seconds_since_midnight
      
      create_table "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", primary_key: :time_of_day_key  do |t|
        t.integer   :hour_24
        t.integer   :hour # duplicate of hour_24
        t.string    :hour_24_zero_padded
        t.string    :hour_zero_padded # duplicate of hour_24_zero_padded
        t.string    :hour_minute_24
        t.string    :hour_minute # duplicate of hour_minute_24
        t.string    :hour_minute_second_24
        t.string    :hour_minute_second # duplicate of hour_minute_second_24
        t.string    :hour_minute_24_zero_padded
        t.string    :hour_minute_zero_padded # duplicate of hour_minute_24_zero_padded
        t.string    :hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_zero_padded # duplicate of hour_minute_second_24_zero_padded
        t.integer   :minute
        t.string    :minute_zero_padded
        t.integer   :minutes_since_midnight
        t.integer   :second
        t.string    :second_zero_padded
        t.integer   :seconds_since_midnight
      end
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_24, :name => :kg_dw_todme_hour_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour, :name => :kg_dw_todme_hour
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_24_zero_padded, :name => :kg_dw_todme_hour_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_zero_padded, :name => :kg_dw_todme_hour_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_minute_24, :name => :kg_dw_todme_hour_minute_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_minute, :name => :kg_dw_todme_hour_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_minute_second_24, :name => :kg_dw_todme_hour_minute_second_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_minute_second, :name => :kg_dw_todme_hour_minute_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_minute_24_zero_padded, :name => :kg_dw_todme_hour_minute_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_minute_zero_padded, :name => :kg_dw_todme_hour_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_minute_second_24_zero_padded, :name => :kg_dw_todme_hour_minute_second_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :hour_minute_second_zero_padded, :name => :kg_dw_todme_hour_minute_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :minute, :name => :kg_dw_todme_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :minute_zero_padded, :name => :kg_dw_todme_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :minutes_since_midnight, :name => :kg_dw_todme_minutes_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :second, :name => :kg_dw_todme_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :second_zero_padded, :name => :kg_dw_todme_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_minutes_expanded_dimensions", :seconds_since_midnight, :name => :kg_dw_todme_seconds_since_midnight
      
      create_table "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", primary_key: :time_of_day_key  do |t|
        t.integer   :hour_24
        t.integer   :hour # duplicate of hour_24
        t.string    :hour_24_zero_padded
        t.string    :hour_zero_padded # duplicate of hour_24_zero_padded
        t.string    :hour_minute_24
        t.string    :hour_minute # duplicate of hour_minute_24
        t.string    :hour_minute_second_24
        t.string    :hour_minute_second # duplicate of hour_minute_second_24
        t.string    :hour_minute_24_zero_padded
        t.string    :hour_minute_zero_padded # duplicate of hour_minute_24_zero_padded
        t.string    :hour_minute_second_24_zero_padded
        t.string    :hour_minute_second_zero_padded # duplicate of hour_minute_second_24_zero_padded
        t.integer   :minute
        t.string    :minute_zero_padded
        t.integer   :minutes_since_midnight
        t.integer   :second
        t.string    :second_zero_padded
        t.integer   :seconds_since_midnight
      end
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_24, :name => :kg_dw_todse_hour_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour, :name => :kg_dw_todse_hour
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_24_zero_padded, :name => :kg_dw_todse_hour_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_zero_padded, :name => :kg_dw_todse_hour_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_minute_24, :name => :kg_dw_todse_hour_minute_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_minute, :name => :kg_dw_todse_hour_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_minute_second_24, :name => :kg_dw_todse_hour_minute_second_24
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_minute_second, :name => :kg_dw_todse_hour_minute_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_minute_24_zero_padded, :name => :kg_dw_todse_hour_minute_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_minute_zero_padded, :name => :kg_dw_todse_hour_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_minute_second_24_zero_padded, :name => :kg_dw_todse_hour_minute_second_24_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :hour_minute_second_zero_padded, :name => :kg_dw_todse_hour_minute_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :minute, :name => :kg_dw_todse_minute
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :minute_zero_padded, :name => :kg_dw_todse_minute_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :minutes_since_midnight, :name => :kg_dw_todse_minutes_since_midnight
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :second, :name => :kg_dw_todse_second
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :second_zero_padded, :name => :kg_dw_todse_second_zero_padded
      add_index "datawarehouse.kg_datawarehouse_time_of_day_seconds_expanded_dimensions", :seconds_since_midnight, :name => :kg_dw_todse_seconds_since_midnight
    end
  end

  
  
  
end


