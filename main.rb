# frozen_string_literal: true

require 'date'

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [$stdin, $stdout].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# 1 — красный, 2 — оранжевый, 3 — жёлтый, 4 — зелёный, 5 — голубой, 6 — синий, 7 — фиолетовый
COLORS_NUMBERS = { 'красный' => 1, 'оранжевый' => 2, 'жёлтый' => 3, 'зелёный' => 4, 'голубой' => 5, 'синий' => 6,
                   'фиолетовый' => 7 }.freeze

puts 'Введите номер название цвета: '
name_color = gets.chomp
num = COLORS_NUMBERS.find { |key, _value| key == name_color } & [1]
if num
  puts num
else
  puts 'Такого цвета нету!'
end

def leap_year?(year)
  Date.leap? year
end

puts leap_year? Time.new.year

def sum(*params)
  params.sum
end

puts sum 1, 2, 3, 4, 5
