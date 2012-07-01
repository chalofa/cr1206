require 'spec_helper'

describe CloneRule do
  let(:cell) { mock DeadCell }
  subject { CloneRule.new(cell) }

  describe '#apply' do
    it 'should duplicate original cell' do
      cell.should_receive(:clone)
      subject.apply
    end
  end

end
