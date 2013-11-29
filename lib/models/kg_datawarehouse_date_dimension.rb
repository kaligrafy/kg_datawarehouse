require 'active-record'

module KgDatawarehouse
  class DateDimension < ActiveRecord::Base
    self.table_name = :kg_datawarehouse_date_dimensions
    self.primary_key = :date_key
    
  end
end