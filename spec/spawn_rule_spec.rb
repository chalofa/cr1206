require 'spec_helper'

describe SpawnRule do

  describe '#apply' do
    it 'should create an alive cell' do
      AliveCell.should_receive(:new)
      subject.apply
    end
  end

end
