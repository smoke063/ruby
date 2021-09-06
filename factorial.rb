# frozen_string_literal: true

# num = ARGV[0].to_i

puts 'Введите число: '
num = gets.chomp.to_i

def factorial(num)
  if num <= 1
    1
  else
    num * factorial(num - 1)
  end
end

puts factorial num
