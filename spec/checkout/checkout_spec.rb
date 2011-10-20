require 'lib/checkout'

describe Checkout do
  let(:co) { Checkout.new }

  describe "#total_price" do
    subject { co.total_price }

    before(:each) do
      goods.split(//).each { |item| co.scan(item) }
    end

    context "given without any goods" do
      let(:goods) { "" }
      it { should eql(0) }
    end

    context "given a single goods" do
      let(:goods) { "A" }
      it { should eql(50) }
    end

    context "given two single goods" do
      let(:goods) { "AB" }
      it { should eql(80) }
    end

    context "given a combination" do
      let(:goods) { "AAA" }
      it { should eql(130) }
    end
  end
end

