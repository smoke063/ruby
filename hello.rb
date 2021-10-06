# frozen_string_literal: true

# Hello
class Hello
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def say
    puts "Hello, #{@word}!"
  end

  def to_s
    "Hello, #{@word}!"
  end

end
