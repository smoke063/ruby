# frozen_string_literal: true


# week
class Week
  def each(days, &block)
    for d in days
      block.call d
    end
  end
end
