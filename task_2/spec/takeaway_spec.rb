require 'spec_helper'

describe Takeaway do

let(:takeaway) { Takeaway.new }

  it 'should have menu on initialization' do
    expect(takeaway.menu).to eq({pizza: 12.50, dessert: 3.20, drink: 2.99 })
  end

  it 'should have an empty order on initialization' do
    expect(takeaway.order).to eq([])
  end
end