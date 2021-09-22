# frozen_string_literal: true

require_relative 'colors'

colors = fill_colors

colors.each { |color| puts color }
puts colors.compact.select { |element| element.strip.empty? == false }.sort

puts %w[cat dog tiger].select { |element| element.include? 't' }

puts %w[cat dog tiger].map(&:capitalize)

puts %w[понедельник вторник среда четверг пятница суббота востресенье].select { |element| element.start_with? 'с' }

months = %w[январь февраль март апрель май июнь июль сентябрь октябрь ноябрь декабрь]
puts months.select { |m| months.map(&:size).minmax.include? m.length }

puts 'Hello world!'.split(//)
