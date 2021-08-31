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
  ##
  # Поля для чтения профессия
  attr_reader :profession

  def initialize(name, surname, profession)
    @name = name
    @surname = surname
    @profession = profession
  end

  ##
  # Возращает Имя и Фамилию
  #
  # = Пример использования
  #
  #   user = User.new
  #   user.fio
  def fio
    "ФИО: #{@name} #{@surname}"
  end
end
