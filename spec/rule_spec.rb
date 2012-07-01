require 'spec_helper'

describe Rule do
  subject { Rule.new(AliveCell.new) }

  describe 'cell' do
    it 'should have a cell' do
      subject.cell.should be_a_kind_of(Cell)
    end
  end

end
