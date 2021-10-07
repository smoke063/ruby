# frozen_string_literal: true
# foo
class Foo
  def initialize(params)
    @params = params
  end

  def method_missing(name)
    @params[name] if @params.include? name
  end

end
