require 'spec_helper'

describe Universe do

  describe 'dimension' do
    it 'should use a default dimension' do
      subject.dimension.should == 3
    end

    it 'should allow custom dimension' do
      Universe.new(10).dimension.should == 10
    end
  end

end
