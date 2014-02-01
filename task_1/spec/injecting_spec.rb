require 'spec_helper'

describe 'injecting' do
  let(:array) { Array.new }
  
  it 'array should have injecting method' do
    expect(array.injecting).to be_true
  end
end