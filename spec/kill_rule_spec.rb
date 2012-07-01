require 'spec_helper'

describe KillRule do
  describe '#apply' do
    it 'should generate a dead cell' do
      DeadCell.should_receive(:new)
      subject.apply
    end
  end
end
