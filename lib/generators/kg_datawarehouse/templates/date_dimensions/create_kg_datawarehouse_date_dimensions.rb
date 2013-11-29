class CreateKgDatawarehouseDateDimensions < ActiveRecord::Migration
  def self.up
    create_table :kg_datawarehouse_date_dimensions, primary_key: :date_key  do |t|
      t.date      :full_date
      t.integer   :day_of_week
      t.integer   :day_num_in_month
      t.integer   :day_num_overall
      t.string    :day_name
      t.string    :day_abbrev
      t.integer   :weekday_flag
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
      t.boolean   :last_day_in_month_flag
      t.date      :same_day_year_ago_date
    end
    add_index :kg_datawarehouse_date_dimensions, :full_date
    add_index :kg_datawarehouse_date_dimensions, :day_of_week
    add_index :kg_datawarehouse_date_dimensions, :day_num_in_month
    add_index :kg_datawarehouse_date_dimensions, :day_num_overall
    add_index :kg_datawarehouse_date_dimensions, :day_name
    add_index :kg_datawarehouse_date_dimensions, :day_abbrev
    add_index :kg_datawarehouse_date_dimensions, :weekday_flag
    add_index :kg_datawarehouse_date_dimensions, :week_num_in_year
    add_index :kg_datawarehouse_date_dimensions, :week_num_overall
    add_index :kg_datawarehouse_date_dimensions, :week_begin_date
    add_index :kg_datawarehouse_date_dimensions, :week_begin_date_key
    add_index :kg_datawarehouse_date_dimensions, :month
    add_index :kg_datawarehouse_date_dimensions, :month_num_overall
    add_index :kg_datawarehouse_date_dimensions, :month_name
    add_index :kg_datawarehouse_date_dimensions, :month_abbrev
    add_index :kg_datawarehouse_date_dimensions, :quarter
    add_index :kg_datawarehouse_date_dimensions, :year
    add_index :kg_datawarehouse_date_dimensions, :yearmo
    add_index :kg_datawarehouse_date_dimensions, :fiscal_month
    add_index :kg_datawarehouse_date_dimensions, :fiscal_quarter
    add_index :kg_datawarehouse_date_dimensions, :fiscal_year
    add_index :kg_datawarehouse_date_dimensions, :last_day_in_month_flag
    add_index :kg_datawarehouse_date_dimensions, :same_day_year_ago_date
    
    create_table :kg_datawarehouse_time_of_day_dimensions, primary_key: :time_of_day_key  do |t|
      t.time      :full_time_of_day
      t.integer   :hour_24
      t.integer   :hour # dupliate of hour_24
      t.integer   :hour_12
      t.string    :hour_24_zero_padded
      t.string    :hour_zero_padded # dupliate of hour_24_zero_padded
      t.string    :hour_12_zero_padded
      t.string    :hour_minute_24
      t.string    :hour_minute # dupliate of hour_minute_24
      t.string    :hour_minute_12
      t.string    :hour_minute_second_24
      t.string    :hour_minute_second # hour_minute_second_24
      t.string    :hour_minute_second_12
      t.string    :hour_minute_24_zero_padded
      t.string    :hour_minute_zero_padded # dupliate of hour_minute_24_zero_padded
      t.string    :hour_minute_12_zero_padded
      t.string    :hour_minute_second_24_zero_padded
      t.string    :hour_minute_second_zero_padded # hour_minute_second_24_zero_padded
      t.string    :hour_minute_second_12_zero_padded
      t.integer   :minute
      t.string    :minute_zero_padded
      t.integer   :minutes_since_midnight
      t.boolean   :first_minute_in_hour_flag
      t.integer   :second
      t.string    :second_zero_padded
      t.integer   :seconds_since_midnight
      t.boolean   :first_second_in_hour_flag
      t.boolean   :first_second_in_minute_flag
      t.boolean   :am_flag
      t.boolean   :pm_flag
      t.string    :am_pm_marker
    end
    add_index :kg_datawarehouse_time_of_day_dimensions, :full_time_of_day
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_24
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_12
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_24_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_12_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_24
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_12
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_24
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_12
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_24_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_12_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_24_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_12_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :minute
    add_index :kg_datawarehouse_time_of_day_dimensions, :minute_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :minutes_since_midnight
    add_index :kg_datawarehouse_time_of_day_dimensions, :first_minute_in_hour_flag
    add_index :kg_datawarehouse_time_of_day_dimensions, :second
    add_index :kg_datawarehouse_time_of_day_dimensions, :second_zero_padded
    add_index :kg_datawarehouse_time_of_day_dimensions, :seconds_since_midnight
    add_index :kg_datawarehouse_time_of_day_dimensions, :first_second_in_hour_flag
    add_index :kg_datawarehouse_time_of_day_dimensions, :first_second_in_minute_flag
    add_index :kg_datawarehouse_time_of_day_dimensions, :am_flag
    add_index :kg_datawarehouse_time_of_day_dimensions, :pm_flag
    add_index :kg_datawarehouse_time_of_day_dimensions, :am_pm_marker
    
    create_table :kg_datawarehouse_hour_of_day_dimension, primary_key: :hour_of_day_key  do |t|
      t.integer   :hour_24
      t.integer   :hour # dupliate of hour_24
      t.integer   :hour_12
      t.string    :hour_24_zero_padded
      t.string    :hour_zero_padded # dupliate of hour_24_zero_padded
      t.string    :hour_12_zero_padded
      t.integer   :minutes_since_midnight
      t.integer   :seconds_since_midnight
      t.boolean   :am_flag
      t.boolean   :pm_flag
      t.string    :am_pm_marker
    end
    add_index :kg_datawarehouse_hour_of_day_dimensions, :hour_24
    add_index :kg_datawarehouse_hour_of_day_dimensions, :hour # dupliate of hour_24
    add_index :kg_datawarehouse_hour_of_day_dimensions, :hour_12
    add_index :kg_datawarehouse_hour_of_day_dimensions, :hour_24_zero_padded
    add_index :kg_datawarehouse_hour_of_day_dimensions, :hour_zero_padded # dupliate of hour_24_zero_padded
    add_index :kg_datawarehouse_hour_of_day_dimensions, :hour_12_zero_padded
    add_index :kg_datawarehouse_hour_of_day_dimensions, :minutes_since_midnight
    add_index :kg_datawarehouse_hour_of_day_dimensions, :seconds_since_midnight
    add_index :kg_datawarehouse_hour_of_day_dimensions, :am_flag
    add_index :kg_datawarehouse_hour_of_day_dimensions, :pm_flag
    add_index :kg_datawarehouse_hour_of_day_dimensions, :am_pm_marker
  end

  def self.down
    remove_index :kg_datawarehouse_date_dimensions, :full_date
    remove_index :kg_datawarehouse_date_dimensions, :day_of_week
    remove_index :kg_datawarehouse_date_dimensions, :day_num_in_month
    remove_index :kg_datawarehouse_date_dimensions, :day_num_overall
    remove_index :kg_datawarehouse_date_dimensions, :day_name
    remove_index :kg_datawarehouse_date_dimensions, :day_abbrev
    remove_index :kg_datawarehouse_date_dimensions, :weekday_flag
    remove_index :kg_datawarehouse_date_dimensions, :week_num_in_year
    remove_index :kg_datawarehouse_date_dimensions, :week_num_overall
    remove_index :kg_datawarehouse_date_dimensions, :week_begin_date
    remove_index :kg_datawarehouse_date_dimensions, :week_begin_date_key
    remove_index :kg_datawarehouse_date_dimensions, :month
    remove_index :kg_datawarehouse_date_dimensions, :month_num_overall
    remove_index :kg_datawarehouse_date_dimensions, :month_name
    remove_index :kg_datawarehouse_date_dimensions, :month_abbrev
    remove_index :kg_datawarehouse_date_dimensions, :quarter
    remove_index :kg_datawarehouse_date_dimensions, :year
    remove_index :kg_datawarehouse_date_dimensions, :yearmo
    remove_index :kg_datawarehouse_date_dimensions, :fiscal_month
    remove_index :kg_datawarehouse_date_dimensions, :fiscal_quarter
    remove_index :kg_datawarehouse_date_dimensions, :fiscal_year
    remove_index :kg_datawarehouse_date_dimensions, :last_day_in_month_flag
    remove_index :kg_datawarehouse_date_dimensions, :same_day_year_ago_date
    
    drop_table :kg_datawarehouse_date_dimensions
    
    remove_index :kg_datawarehouse_time_of_day_dimensions, :full_time_of_day
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_24
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour # dupliate of hour_24
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_12
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_24_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_12_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_24
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute # dupliate of hour_minute_24
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_12
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_24
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second # hour_minute_second_24
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_12
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_24_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_zero_padded # dupliate of hour_minute_24_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_12_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_24_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_zero_padded # hour_minute_second_24_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :hour_minute_second_12_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :minute
    remove_index :kg_datawarehouse_time_of_day_dimensions, :minute_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :minutes_since_midnight
    remove_index :kg_datawarehouse_time_of_day_dimensions, :first_minute_in_hour_flag
    remove_index :kg_datawarehouse_time_of_day_dimensions, :second
    remove_index :kg_datawarehouse_time_of_day_dimensions, :second_zero_padded
    remove_index :kg_datawarehouse_time_of_day_dimensions, :seconds_since_midnight
    remove_index :kg_datawarehouse_time_of_day_dimensions, :first_second_in_hour_flag
    remove_index :kg_datawarehouse_time_of_day_dimensions, :first_second_in_minute_flag
    remove_index :kg_datawarehouse_time_of_day_dimensions, :am_flag
    remove_index :kg_datawarehouse_time_of_day_dimensions, :pm_flag
    remove_index :kg_datawarehouse_time_of_day_dimensions, :am_pm_marker
    
    drop_table :kg_datawarehouse_time_of_day_dimensions
  end
  
  
  
end


