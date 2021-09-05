# frozen_string_literal: true

require 'date'

#  Класс приветствия
class Hello
  def hello
    now = DateTime.now
    six = DateTime.new(now.year, now.month, now.day, 6, 0o0, 0o0)
    twelve = DateTime.new(now.year, now.month, now.day, 12, 0o0, 0o0)
    eighteen = DateTime.new(now.year, now.month, now.day, 18, 0o0, 0o0)
    puts 'Доброе утро' if (six.hour..twelve.hour).include? now.hour
    puts 'Добрый день' if (twelve.hour..eighteen.hour).include? now.hour
    puts 'Добрый вечер' if (eighteen.hour..24).include? now.hour
    puts 'Доброй ночи' if (0..six.hour).include? now.hour
  end
end
