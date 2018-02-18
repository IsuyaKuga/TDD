module Tdd
  class Dollar
    include Comparable
    attr_reader :amount
    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      self.class.new(@amount * multiplier)
    end

    def <=>(other)
      @amount <=> other.amount
    end
  end
end
