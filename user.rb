# frozen_string_literal: true

##
# Класс Пользователя
class User
  ##
  # Поля для чтения имя
  attr_reader :name
  ##
  # Поля для чтения фамилия
  attr_reader :surname

  def initialize(name, surname)
    @name = name
    @surname = surname
  end

  ##
  # Возращает Имя и Фамилию
  #
  # = Пример использования
  #
  #   user = User.new
  #   user.fio
  def fio
    "ФИО: #{@surname} #{@name}"
  end
end
