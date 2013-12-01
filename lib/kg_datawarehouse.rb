require "active_record"
Dir["models/*.rb"].each {|file| require file }
