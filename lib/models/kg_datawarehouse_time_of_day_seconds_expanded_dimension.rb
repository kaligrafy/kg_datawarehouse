require "active_support/core_ext/numeric/time"

module KgDatawarehouse
  class TimeOfDaySecondsExpandedDimension < ActiveRecord::Base
    self.table_name = :kg_datawarehouse_time_of_day_seconds_expanded_dimensions
    self.primary_key = :time_of_day_key
    
    def self.fill
      KgDatawarehouse::TimeOfDaySecondsDimension.destroy_all # delete existing data from table
      time_start = Time.parse("2000-01-01 00:00:00 -0000")
      
      ActiveRecord::Base.transaction do
        (0..108000).each do |i|
          new_time = KgDatawarehouse::TimeOfDaySecondsExpandedDimension.new
          hour = (i/3600).floor
          minutes_since_midnight = (i/60).floor
          seconds_since_midnight = i
          minute = (minutes_since_midnight-hour*60)
          second = (seconds_since_midnight-hour*3600)
          new_time.time_of_day_key                   = i
          new_time.hour_24                           = hour
          new_time.hour                              = hour
          new_time.hour_24_zero_padded               = hour.to_s.rjust(2,"0")
          new_time.hour_zero_padded                  = hour.to_s.rjust(2,"0")
          new_time.hour_minute_24                    = hour.to_s+":"+minute.to_s.rjust(2,"0")
          new_time.hour_minute                       = hour.to_s+":"+minute.to_s.rjust(2,"0")
          new_time.hour_minute_second_24             = hour.to_s+":"+minute.to_s.rjust(2,"0")+":"+second.to_s.rjust(2,"0")
          new_time.hour_minute_second                = hour.to_s+":"+minute.to_s.rjust(2,"0")+":"+second.to_s.rjust(2,"0")
          new_time.hour_minute_24_zero_padded        = hour.to_s.rjust(2,"0")+":"+minute.to_s.rjust(2,"0")
          new_time.hour_minute_zero_padded           = hour.to_s.rjust(2,"0")+":"+minute.to_s.rjust(2,"0")
          new_time.hour_minute_second_24_zero_padded = hour.to_s.rjust(2,"0")+":"+minute.to_s.rjust(2,"0")+":"+second.to_s.rjust(2,"0")
          new_time.hour_minute_second_zero_padded    = hour.to_s.rjust(2,"0")+":"+minute.to_s.rjust(2,"0")+":"+second.to_s.rjust(2,"0")
          new_time.minute                            = minute
          new_time.minute_zero_padded                = minute.to_s.rjust(2,"0")
          new_time.minutes_since_midnight            = minutes_since_midnight
          new_time.second                            = second
          new_time.second_zero_padded                = second.to_s.rjust(2,"0")
          new_time.seconds_since_midnight            = seconds_since_midnight
          
          new_time.save
        end
      end
    end
  end
end