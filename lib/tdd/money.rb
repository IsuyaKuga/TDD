module Tdd
  class Money
    include Comparable
    attr_reader :amount, :currency

    def self.dollar(amount)
      Tdd::Money.new(amount, "USD")
    end

    def self.franc(amount)
      Tdd::Money.new(amount, "CHF")
    end

    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def currency()
      @currency
    end

    def times(multiplier)
      self.class.new(@amount * multiplier, @currency)
    end

    def <=>(other)
      return nil unless @currency == other.currency
      @amount <=> other.amount
    end

  end
end
