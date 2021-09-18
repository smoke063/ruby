# frozen_string_literal: true

arr = []
while arr.length < 2
  puts 'Введите число: '
  num = gets.chomp.to_i
  if num.zero? && arr.length == 1
    puts 'На ноль делить нельзя.'
  else
    arr.push num
  end
end

first_num, second_num = arr
puts "Результат: #{first_num / second_num}"

arr_random = Array.new(10) { |_| Random.new.rand(0..99) }
p arr_random
max = 0
min = arr_random[0]
arr_random.each do |item|
  max = item if item > max
  min = item if item < min
end
puts max
puts min
