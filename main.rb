# frozen_string_literal: true

require_relative 'vector'
require_relative 'unit'

p1 = Vector::Point.new
p2 = Vector::Point.new

p1.x = 3
p1.y = 2

p2.x = 12
p2.y = 11

v = Vector.new(p1, p2)
v.distance

u = Unit.new(
  [
    Unit::Manager.new('Manager'),
    Unit::Frontender.new('Fronter 1'),
    Unit::Frontender.new('Fronter 2'),
    Unit::Designer.new('Designer'),
    Unit::Tester.new('Tester')
  ]
)

u.print

u.add Unit::Backender.new('Backender 2')
u.add Unit::Backender.new('Backender 1')
u.add Unit::Backender.new('Backender 3')

u.print

u.remove

backers = u.get_all_by_type Unit::Backender

backers.each { |employer| puts employer.name }

testers = u.get_all_by_type Unit::Tester

testers.each { |employer| puts employer.name }
