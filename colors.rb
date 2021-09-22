# frozen_string_literal: true


def fill_colors
  colors = []
  loop do
    puts 'Введите цвет: '
    color = gets.chomp
    colors.push color
    puts 'Для прерывания введите stop: '
    break if gets.chomp == 'stop'
  end
  colors
end
