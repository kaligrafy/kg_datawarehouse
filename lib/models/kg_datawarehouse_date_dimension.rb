require "active_support/core_ext/numeric/time"

module KgDatawarehouse
  class TimeOfDayDimension < ActiveRecord::Base
    self.table_name = :kg_datawarehouse_time_of_day_dimensions
    self.primary_key = :time_of_day_key
    
    # args: hash: {:minutes => boolean, :seconds => boolean} :minutes default is true, :seconds default is false (if :seconds is true, :minutes will be set to true even if args[:minutes] is false)
    def self.fill(args = {})
      KgDatawarehouse::TimeOfDayDimension.destroy_all # delete existing data from table
      include_hours   = true
      include_seconds = args.fetch(:seconds, false)
      include_minutes = include_seconds ? true : args.fetch(:minutes, true)
      time_start = Time.parse("2000-01-01 00:00:00 -0000")
      
      if include_seconds
        ActiveRecord::Base.transaction do
          (0..86399).each do |i|
            i_time = time_start+i.seconds
            new_time = KgDatawarehouse::TimeOfDayDimension.new
            new_time.time_of_day_key                   = i
            new_time.full_time_of_day                  = i_time
            new_time.hour_24                           = i_time.hour
            new_time.hour                              = i_time.hour
            new_time.hour_12                           = i_time.strftime("%l").to_i
            new_time.hour_24_zero_padded               = i_time.strftime("%H")
            new_time.hour_zero_padded                  = i_time.strftime("%H")
            new_time.hour_12_zero_padded               = i_time.strftime("%I %p")
            new_time.hour_minute_24                    = i_time.strftime("%k:%M")
            new_time.hour_minute                       = i_time.strftime("%k:%M")
            new_time.hour_minute_12                    = i_time.strftime("%l:%M %p")
            new_time.hour_minute_second_24             = i_time.strftime("%k:%M:%S")
            new_time.hour_minute_second                = i_time.strftime("%k:%M:%S")
            new_time.hour_minute_second_12             = i_time.strftime("%l:%M:%S %p")
            new_time.hour_minute_24_zero_padded        = i_time.strftime("%H:%M")
            new_time.hour_minute_zero_padded           = i_time.strftime("%H:%M")
            new_time.hour_minute_12_zero_padded        = i_time.strftime("%I:%M %p")
            new_time.hour_minute_second_24_zero_padded = i_time.strftime("%H:%M:%S")
            new_time.hour_minute_second_zero_padded    = i_time.strftime("%H:%M:%S")
            new_time.hour_minute_second_12_zero_padded = i_time.strftime("%I:%M:%S %p")
            new_time.minute                            = i_time.min
            new_time.minute_zero_padded                = i_time.strftime("%M")
            new_time.minutes_since_midnight            = (i/60).floor
            new_time.second                            = i_time.sec
            new_time.second_zero_padded                = i_time.strftime("%S")
            new_time.seconds_since_midnight            = i_time.seconds_since_midnight.to_i
            new_time.am_pm                             = i_time.strftime("%p")
            
            new_time.save
          end
        end
      elsif include_minutes
        ActiveRecord::Base.transaction do
          (0..1439).each do |i|
            i_time = time_start+i.minutes
            new_time = KgDatawarehouse::TimeOfDayDimension.new
            new_time.time_of_day_key                   = i
            new_time.full_time_of_day                  = i_time
            new_time.hour_24                           = i_time.hour
            new_time.hour                              = i_time.hour
            new_time.hour_12                           = i_time.strftime("%l").to_i
            new_time.hour_24_zero_padded               = i_time.strftime("%H")
            new_time.hour_zero_padded                  = i_time.strftime("%H")
            new_time.hour_12_zero_padded               = i_time.strftime("%I %p")
            new_time.hour_minute_24                    = i_time.strftime("%k:%M")
            new_time.hour_minute                       = i_time.strftime("%k:%M")
            new_time.hour_minute_12                    = i_time.strftime("%l:%M %p")
            new_time.hour_minute_second_24             = i_time.strftime("%k:%M:%S")
            new_time.hour_minute_second                = i_time.strftime("%k:%M:%S")
            new_time.hour_minute_second_12             = i_time.strftime("%l:%M:%S %p")
            new_time.hour_minute_24_zero_padded        = i_time.strftime("%H:%M")
            new_time.hour_minute_zero_padded           = i_time.strftime("%H:%M")
            new_time.hour_minute_12_zero_padded        = i_time.strftime("%I:%M %p")
            new_time.hour_minute_second_24_zero_padded = i_time.strftime("%H:%M:%S")
            new_time.hour_minute_second_zero_padded    = i_time.strftime("%H:%M:%S")
            new_time.hour_minute_second_12_zero_padded = i_time.strftime("%I:%M:%S %p")
            new_time.minute                            = i_time.min
            new_time.minute_zero_padded                = i_time.strftime("%M")
            new_time.minutes_since_midnight            = i
            new_time.second                            = i_time.sec
            new_time.second_zero_padded                = i_time.strftime("%S")
            new_time.seconds_since_midnight            = i_time.seconds_since_midnight.to_i
            new_time.am_pm                             = i_time.strftime("%p")
            
            new_time.save
          end
        end
      else
        ActiveRecord::Base.transaction do
          (0..23).each do |i|
            i_time = time_start+i.hours
            new_time = KgDatawarehouse::TimeOfDayDimension.new
            new_time.time_of_day_key                   = i
            new_time.full_time_of_day                  = i_time
            new_time.hour_24                           = i_time.hour
            new_time.hour                              = i_time.hour
            new_time.hour_12                           = i_time.strftime("%l").to_i
            new_time.hour_24_zero_padded               = i_time.strftime("%H")
            new_time.hour_zero_padded                  = i_time.strftime("%H")
            new_time.hour_12_zero_padded               = i_time.strftime("%I %p")
            new_time.hour_minute_24                    = i_time.strftime("%k:%M")
            new_time.hour_minute                       = i_time.strftime("%k:%M")
            new_time.hour_minute_12                    = i_time.strftime("%l:%M %p")
            new_time.hour_minute_second_24             = i_time.strftime("%k:%M:%S")
            new_time.hour_minute_second                = i_time.strftime("%k:%M:%S")
            new_time.hour_minute_second_12             = i_time.strftime("%l:%M:%S %p")
            new_time.hour_minute_24_zero_padded        = i_time.strftime("%H:%M")
            new_time.hour_minute_zero_padded           = i_time.strftime("%H:%M")
            new_time.hour_minute_12_zero_padded        = i_time.strftime("%I:%M %p")
            new_time.hour_minute_second_24_zero_padded = i_time.strftime("%H:%M:%S")
            new_time.hour_minute_second_zero_padded    = i_time.strftime("%H:%M:%S")
            new_time.hour_minute_second_12_zero_padded = i_time.strftime("%I:%M:%S %p")
            new_time.minute                            = i_time.min
            new_time.minute_zero_padded                = i_time.strftime("%M")
            new_time.minutes_since_midnight            = i*60
            new_time.second                            = i_time.sec
            new_time.second_zero_padded                = i_time.strftime("%S")
            new_time.seconds_since_midnight            = i_time.seconds_since_midnight.to_i
            new_time.am_pm                             = i_time.strftime("%p")
            
            new_time.save
          end
        end
      end
    end
  end
end