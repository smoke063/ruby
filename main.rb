# frozen_string_literal: true

require_relative 'hello'

MONDAY = 'Понедельник'
TUESDAY = 'Вторник'
WEDNESDAY = 'Среда'
THURSDAY = 'Четверг'
FRIDAY = 'Пятница'
SATURDAY = 'Суббота'
SUNDAY = 'Воскресенье'

WEEK = [MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY].freeze

WEEK.each { |day| puts day }

hello = Hello.new
hello.hello