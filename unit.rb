# frozen_string_literal: true

# Unit
class Unit

  def initialize(employees = [])
    @employees = employees
  end

  def add(employer)
    @employees.push(employer)
  end

  def remove
    @employees.pop
  end

  def print
    @employees.sort_by(&:name).each { |employer| puts employer.name }
  end

  def get_all_by_type(type)
    @employees.filter { |employer| employer.instance_of? type }
  end

  # Employee
  class Employee
    attr_accessor :name

    def initialize(name)
      @name = name
    end
  end

  class Manager < Unit::Employee
  end

  class Frontender < Unit::Employee
  end

  class Backender < Unit::Employee
  end

  class Tester < Unit::Employee
  end

  class Designer < Unit::Employee
  end

end

