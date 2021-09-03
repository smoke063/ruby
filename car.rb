# frozen_string_literal: true

##
# Класс Car
class Car

  attr_reader :name, :color, :max_speed, :type

  def initialize(name, color, max_speed, type)
    @name = name
    @color = color
    @max_speed = max_speed
    @type = type
  end

  def report_state
    puts "Наименование: #{@name}"
    puts "Цвет: #{@color}"
    puts "Макс. скорость: #{@max_speed}"
    puts "Тип: #{@type}"
  end
end
