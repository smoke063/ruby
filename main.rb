# frozen_string_literal: true

require_relative "Building"
require_relative "chess"
require_relative "week"
require_relative "factory"

building = Building.new
puts building.size
puts building.color


king = King.new
puts king.class_name
queen = Queen.new
puts queen.class_name
puts king == queen
puts king.class_name == queen.class_name

# 1 — понедельник, 2 — вторник, 3 — среда, 4 — четверг, 5 — пятница, 6 — суббота, 7 — воскресенье
WEEK = { 1 => "понедельник", 2 => "вторник", 3 => "среда", 4 => "четверг", 5 => "пятница", 6 => "суббота",
         7 => "воскресенье" }.freeze

week = Week.new
week.each WEEK.values do |day|
  puts day
end

Factory.build
