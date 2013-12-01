require "active_record"
require "models/kg_datawarehouse_date_dimension.rb"
Dir[File.dirname(__FILE__) + "/models/*.rb"].each {|file| require file }
