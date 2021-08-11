# frozen_string_literal: true

require_relative "ticket"
require_relative "user"
require_relative "computer"
require_relative "host"
require_relative "network"
ticket = Ticket.new Film.new "Трудно быть рубистом"
puts "Дата фильма: #{ticket.date}"
puts "Цена билета: #{ticket.price}"
puts "Ваше место: #{ticket.seat}"
puts "Мероприятие: #{ticket.event}"

computer = Computer.new "Mac"
host = Host.new "192.168.0.11"
net = Network.new "Wi-Fi"

puts computer.get_name
puts host.get_name
puts net.get_name

user = User.new "Василий", "Васильевич", "Стоматолог"
puts user.fio
puts "Профессия: #{user.profession}"

out_file = File.new("user.txt", "w")
out_file.puts user.fio
out_file.puts "Профессия: #{user.profession}"
out_file.close
