class Checkout
  PRICING_RULES = {
    "A" => 50
  }
  
  def total_price
    PRICING_RULES.fetch(@item, 0)
  end
  
  def scan item
    @item = item
  end  
end
