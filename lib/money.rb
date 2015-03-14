class Money
  Base = 10

  attr_reader :amount, :precision

  def initialize(amount, precision = 2)
    @amount = amount
    @precision = precision
  end

  def +(other)
    return Money.new(@amount + other.amount, @precision)
  end

  def -(other)
    return Money.new(@amount - other.amount, @precision)
  end

  def ==(other)
    return @amount == other.amount
  end

  def to_s
    return "%d.%d" % [integral, fraction]
  end

  def integral
    @integral ||= @amount / (Base ** @precision)
  end

  def fraction
    @fraction ||= @amount - (@integral * (Base ** @precision))
  end
end
