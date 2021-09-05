# frozen_string_literal: true

option = ARGV.shift
num = option.to_i
puts 'Ввели не число! Ошибка!' if num.zero?
return
if num.even?
  puts 'Четное число'
else
  puts 'Нечетное число'
end
