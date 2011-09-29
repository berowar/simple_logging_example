require 'spec_helper'

describe Product do
  describe 'should save log after save instance' do
    before do
      @product = Product.create!(:title => "Title")
      @log = MyChangesLogging.last
    end

    it { @log.logable_type.should == 'Product' }
    it { @log.logable_id.should == @product.id }
  end
end