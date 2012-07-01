require 'spec_helper'

describe AliveCell do
  describe '#state' do
    it 'should be alive' do
      subject.state.should == :alive
    end
  end

  describe '#to_s' do
    it 'should show it alive' do
      subject.to_s.should == '1'
    end
  end
end
