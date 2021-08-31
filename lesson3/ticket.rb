# frozen_string_literal: true

# film
class Film
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# ticket
class Ticket
  def initialize(film)
    @film = film
  end

  def date
    "12.05.2022"
  end

  def price
    3500
  end

  def row
    4
  end

  def seat
    12
  end

  def event
    @film.name
  end
end
