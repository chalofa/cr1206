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

  describe '#to_s' do
    context 'when default grid' do
      it 'should display the grid cells state' do
        subject.to_s.should == "ooo\nooo\nooo\n"
      end
    end

    context 'when the smallest dimension' do
      it 'should show the unique cell' do
        Universe.new(1).to_s.should == "o\n"
      end
    end
  end

end
