require 'spec_helper'

describe 'injecting' do
  let(:array) { Array.new }
  
  it 'array should have injecting method' do
    expect(array.injecting).to be_true
  end

  it 'takes an optional argument' do
    expect(array.injecting(1)).to be_true
  end
end