require 'spec_helper'

describe God do
  let(:alive_cell) { mock AliveCell }

  describe '#judge' do
    context 'when alive cell' do
      it 'should use the alive exhibit' do
        #TODO: use exhibit for AliveJudge
        God.judge(alive_cell, 2)
      end
    end
  end

end
