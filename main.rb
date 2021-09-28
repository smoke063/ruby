# frozen_string_literal: true

require 'date'

def week(number_week = 1, &block)
  day = Date.commercial(2021, number_week, 1)
  (day...(day + 7)).to_a.each(&block)
end

week(3) { |day| p day.strftime('%A') }

def weekends
  date = DateTime.now
end
