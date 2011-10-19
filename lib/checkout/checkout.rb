class Checkout
  PRICING_RULES = [
    {"goods" => "BBB", "price" => 60},
    {"goods" => "BB", "price" => 45},
    {"goods" => "B", "price" => 30},
  ]

  def initialize
    @goods = []
    @list = ""
  end

  def total_price
    PRICING_RULES.inject(0) do |total, rule|
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

