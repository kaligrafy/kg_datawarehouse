class CreateKgDatawarehouseDateDimensions < ActiveRecord::Migration
  def self.up
    create_table :kg_datawarehouse_date_dimension, primary_key: :date_key  do |t|
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
    add_index :full_date
    add_index :day_of_week
    add_index :day_num_in_month
    add_index :day_num_overall
    add_index :day_name
    add_index :day_abbrev
    add_index :weekday_flag
    add_index :week_num_in_year
    add_index :week_num_overall
    add_index :week_begin_date
    add_index :week_begin_date_key
    add_index :month
    add_index :month_num_overall
    add_index :month_name
    add_index :month_abbrev
    add_index :quarter
    add_index :year
    add_index :yearmo
    add_index :fiscal_month
    add_index :fiscal_quarter
    add_index :fiscal_year
    add_index :last_day_in_month_flag
    add_index :same_day_year_ago_date
  end

  def self.down
    drop_index :full_date
    drop_index :day_of_week
    drop_index :day_num_in_month
    drop_index :day_num_overall
    drop_index :day_name
    drop_index :day_abbrev
    drop_index :weekday_flag
    drop_index :week_num_in_year
    drop_index :week_num_overall
    drop_index :week_begin_date
    drop_index :week_begin_date_key
    drop_index :month
    drop_index :month_num_overall
    drop_index :month_name
    drop_index :month_abbrev
    drop_index :quarter
    drop_index :year
    drop_index :yearmo
    drop_index :fiscal_month
    drop_index :fiscal_quarter
    drop_index :fiscal_year
    drop_index :last_day_in_month_flag
    drop_index :same_day_year_ago_date
    
    drop_table :kg_datawarehouse_date_dimension
  end
end


