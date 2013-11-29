require "active_support/core_ext/numeric/time"

module KgDatawarehouse
  class DateDimension < ActiveRecord::Base
    self.table_name = :kg_datawarehouse_date_dimensions
    self.primary_key = :date_key
    
    def self.fill(args)
      ActiveRecord::Base.transaction do
        date_start = args.fetch(:start, nil)
        date_end   = args.fetch(:end, nil)
        date_start = args.fetch(:start, nil) unless date_start
        date_end   = args.fetch(:end, nil)   unless date_end
        date_start = Date.parse(date_start) unless date_start.respond_to?(:year) && date_start.respond_to?(:month) && date_start.respond_to?(:mday)
        date_end   = Date.parse(date_end)   unless date_end.respond_to?(:year)   && date_end.respond_to?(:month)   && date_end.respond_to?(:mday)
        i                 = 0
        week_num          = 1
        week_num_overall  = 1
        month_num_overall = 1
        last_date_year    = date_start.year
        date_start.up_to(date_end) do |date|
          new_date = self.new
          new_date.date_key               = date.strftime("%Y%m%d").to_i
          new_date.full_date              = date
          new_date.day_of_week            = date.cwday
          new_date.day_num_in_month       = date.day
          new_date.day_num_in_year        = date.strftime("%j").to_i
          new_date.day_num_overall        = i
          new_date.day_name               = date.strftime("%A")
          new_date.day_abbrev             = date.strftime("%a")
          new_date.weekday_flag           = date.saturday? || date.sunday? ? "Weekend" : "Weekday"
          new_date.is_weekday             = !(date.saturday? || date.sunday?)
          new_date.is_weekend             = (date.saturday? || date.sunday?)
          new_date.week_num_in_year       = week_num
          new_date.week_num_overall       = week_num_overall
          new_date.week_begin_date        = date.beginning_of_week
          new_date.week_begin_date_key    = date.beginning_of_week.strftime("%Y%m%d").to_i
          new_date.month                  = date.month
          new_date.month_num_overall      = month_num_overall
          new_date.month_name             = date.strftime("%B")
          new_date.month_name_abbrev      = date.strftime("%b")
          new_date.quarter                = ((date.month.to_f/12)*4).ceil
          new_date.year                   = date.year
          new_date.yearmo                 = date;strftiime("%Y%m").to_i
          new_date.fiscal_month           = nil
          new_date.fiscal_quarter         = nil
          new_date.fiscal_year            = nil
          new_date.last_day_in_month_flag = (date+1.day).day == 1 ? "Month End" : "Not Month End"
          new_date.is_last_day_in_month   = ((date+1.day).day == 1)
          new_date.same_day_year_ago_date = (date.month == 2 && date.day == 29) ? ((date-1.year)+1.day) : (date-1.year) # make sure we fall on March 1 if date is February 29.
          
          i                 += 1
          week_num          += 1 if date.sunday?
          week_num_overall  += 1 if date.sunday?
          month_num_overall += 1 if date.day == 1
          
          if last_date_year != new_date.year
            last_date_year  = new_date.year
            week_num        = 1 # reset week num if we change year
          end
          
        end
      end
    end
  end
end