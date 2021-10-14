# frozen_string_literal: true

# Integer
class Integer

  KIL = 1_024
  MEG = KIL * 1_024
  GIG = MEG * 1_024
  TER = GIG * 1_024

  def kilobytes
    self * KIL
  end

  def megabytes
    self * MEG
  end

  def gigabytes
    self * GIG
  end

  def terabytes
    self * TER
  end
end

puts 5.kilobytes
puts 5.megabytes
puts 5.gigabytes
puts 5.terabytes

# User
class User
  attr_accessor :name, :surname, :mail, :patronymic

  def initialize
    yield self
  end
end

user = User.new do |user|
  user.name = 'Vasya Test'
  user.surname = 'surname Test'
  user.mail = 'trurtjhoijdg@mail.ru'
  user.patronymic = 'patronymic Test'
end

puts user.name
puts user.surname
puts user.mail
puts user.patronymic