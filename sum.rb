# frozen_string_literal: true

puts 'Введите числа, через запятую: '
nums = gets.chomp.split ','
p nums.map(&:to_i).sum
