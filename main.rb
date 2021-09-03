# frozen_string_literal: true

require_relative 'user'
require_relative 'car'

student = User.new 'Кононов', 'Данила'
teacher = User.new 'Роднин', 'Ярослав'

puts student.fio
puts teacher.fio

car = Car.new 'Лада Калина', 'Белый', 100, 'легковая'
bus = Car.new 'Икарус', 'Черный', 100, 'автобус'

car.report_state
bus.report_state
