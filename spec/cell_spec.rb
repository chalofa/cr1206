require 'spec_helper'

describe Cell do
  it 'should include state' do
    subject.state.should be_nil
  end
end
