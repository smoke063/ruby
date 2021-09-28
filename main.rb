# frozen_string_literal: true

require 'date'

def week(number_week = 1, &block)
  day = Date.commercial(2021, number_week, 1)
  (day...(day + 7)).to_a.each(&block)
end

week(3) { |day| p day.strftime('%A') }

def weekends(&block)
  days = [*Date.new(Time.now.year, 1, 1)..Date.new(Time.now.year, 12, 31)]
  block.call (days.select do |d|
    d.saturday? || d.sunday?
  end).to_a
end

weekends do |day|
  puts day
end

arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]
def walk(arr)
  yield arr.flatten
end

walk(arr) { |i| puts i }

def fibonacci(num)
  first_num = 0
  second_num = 1
  (0..num).each do
    yield first_num
    first_num, second_num = second_num, first_num + second_num
  end
end

fibonacci(10) { |f| print "#{f} " } # 0 1 1 2 3 5 8 13 21 34 55
