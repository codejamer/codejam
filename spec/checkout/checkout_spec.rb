require 'checkout'

describe "Chechout" do
  
  let(:co){Checkout.new}
  
  it "should be 0 if empty" do
    co.total_price.should == 0
  end
  
  it "should be right given single goods" do
    co.scan("B")
    co.total_price.should == 30
  end

  context "multi goods" do
    
    it "should be right given tow goods" do
      2.times { co.scan("B") }
      co.total_price.should == 45
    end
    
    it "should be right given three goods" do
      3.times { co.scan("B") }
      co.total_price.should == 60      
    end

    it "should be right given five goods" do
      5.times { co.scan("B") }
      co.total_price.should == 105      
    end
    
    it "should be right given six goods" do
      6.times { co.scan("B") }
      co.total_price.should == 120      
    end
    
    it "should be right given six goods" do
      13.times { co.scan("B") }
      co.total_price.should == 270      
    end
        
  end
  
end
