require 'lib/checkout'

describe Checkout do
  let(:co) { Checkout.new }

  describe "#total_price" do

    it "should return 0 when no goods" do
      co.total_price.should eql(0)
    end

    it "should return 50 when no goods" do
      co.scan("A")
      co.total_price.should eql(50)
    end
  end
end

