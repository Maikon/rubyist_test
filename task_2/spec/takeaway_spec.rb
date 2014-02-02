require 'spec_helper'

describe Takeaway do

let(:takeaway) { Takeaway.new }

  it 'should have an empty order on initialization' do
    expect(takeaway.order).to eq([])
  end
end