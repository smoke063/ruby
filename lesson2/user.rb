# frozen_string_literal: true

# user
class User
  attr_reader :name, :surname, :profession

  def initialize(name, surname, profession)
    @name = name
    @surname = surname
    @profession = profession
  end

  def fio
    "ФИО: #{@surname} #{@surname}"
  end
end
