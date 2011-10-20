class Checkout
  PRICING_RULES = {
    "A" => 50,
    "AB" => 80
  }
  
  def initialize
    @goods = ""
  end

  def total_price
    PRICING_RULES.fetch(@goods, 0)
  end
  
  def scan item
    @goods += item
  end  
end
