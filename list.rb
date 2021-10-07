# frozen_string_literal: true

# list
class List
  def initialize(*params)
    @params = params
  end

  def each(&block)
    @params.each(&block)
  end
end
