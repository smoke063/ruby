# frozen_string_literal: true

year = ARGV[0].to_i
month = ARGV[1].to_i
day = ARGV[2].to_i

# puts 'Введите год: '
# year = gets.chomp.to_i
# puts 'Введите месяц: '
# month = gets.chomp.to_i
# puts 'Введите день: '
# day = gets.chomp.to_i

def age(year, month, day)
  Time.now.year - year
end

puts age year, month, day
