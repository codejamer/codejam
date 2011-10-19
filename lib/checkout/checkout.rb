require 'lib/checkout'

class Checkout
  def initialize(pricing_rules)
    @pricing_rules = pricing_rules
    @goods = []
    @list = ""
  end

  def total_price
    @pricing_rules.inject(0) do |total, rule|
      total += calculate_price_match rule
    end
  end

  def scan(item)
    @goods << item
    @list = @goods.join
  end

  private

  def calculate_price_match rule
    total = 0
    while @list.include?(rule["goods"]) do
      @list.sub!(rule["goods"], "")
      total += rule["price"]
    end
    total
  end
end

