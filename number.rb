# frozen_string_literal: true

puts 'Введите число: '
num = gets.chomp.to_i

puts num.even? ? 'Четное' : 'Нечетное'
