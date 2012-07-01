require 'spec_helper'

describe DeadCell do
  describe '#state' do
    it 'should be dead' do
      subject.state.should == :dead
    end
  end

  describe '#to_i' do
    it 'should convert to boolean' do
      subject.to_i.should == 0
    end
  end

  describe '#to_s' do
    it 'should show it dead' do
      subject.to_s.should == '.'
    end
  end
end
