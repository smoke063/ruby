# frozen_string_literal: true

require_relative "ticket"
require_relative "user"
ticket = Ticket.new Film.new "Трудно быть рубистом"
puts "Дата фильма: #{ticket.date}"
puts "Цена билета: #{ticket.price}"
puts "Ваше место: #{ticket.seat}"
puts "Мероприятие: #{ticket.event}"

user = User.new "Василий", "Васильевич", "Стоматолог"
puts user.fio
puts "Профессия: #{user.profession}"

out_file = File.new("user.txt", "w")
out_file.puts user.fio
out_file.puts "Профессия: #{user.profession}"
out_file.close
