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

  describe 'grid' do
    it 'should create the grid with alive cells' do
      AliveCell.should_receive(:new).exactly(9)
      Universe.new
    end
  end

  describe '#alive_count' do
    it 'should find left neighbors count' do
      subject.should_receive(:left_neighbors_count).and_return 0
      subject.alive_count(1, 1)
    end

    it 'should find center neighbors count' do
      subject.should_receive(:center_neighbors_count).and_return 0
      subject.alive_count(1, 1)
    end

    it 'should find right neighbors count' do
      subject.should_receive(:right_neighbors_count).and_return 0
      subject.alive_count(1, 1)
    end
  end

  describe '#next!' do
    it 'should judge each cell' do
      God.should_receive(:judge).exactly(9)
      subject.next!
    end
  end

  describe '#to_s' do
    context 'when default grid' do
      it 'should display the grid cells state' do
        subject.to_s.should == "111\n111\n111\n"
      end
    end

    context 'when the smallest dimension' do
      it 'should show the unique cell' do
        Universe.new(1).to_s.should == "1\n"
      end
    end
  end

  #private methods
  describe '#after_offset' do
    context 'when not on the grid edge' do
      it 'should add 1 value' do
        subject.send(:after_offset, 1).should == 2
      end
    end

    context 'when on the grid edge' do
      it 'should use 0 as value' do
        subject.send(:after_offset, 2).should == 0
      end
    end
  end

  describe '#before_offset' do
    it 'should always rest 1 value' do
      subject.send(:before_offset, 0).should == -1
    end
  end

  describe '#center_neighbors_count' do
    it 'should only sum the top and bottom center column cells' do
      subject.send(:center_neighbors_count, 1, 1).should == 2
    end
  end

  describe '#left_neighbors_count' do
    it 'should sum left column cells' do
      subject.send(:left_neighbors_count, 0, 0).should == 3
    end
  end

  describe '#right_neighbors_count' do
    it 'should use left column' do
      subject.send(:right_neighbors_count, 2, 2).should == 3
    end
  end

end
