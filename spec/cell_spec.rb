require 'spec_helper'

describe Cell do
  it 'should include state' do
    subject.state.should be_nil
  end

  describe '#to_i' do
    it 'should convert text output to integer' do
      subject.should_receive(:to_s).and_return '0'
      subject.to_i.should == 0
    end
  end
end
