require 'spec_helper'

describe 'injecting' do
  let(:array) { [1,2,3] }

  it 'should return the sum of the array' do
    expect(array.injecting { |acc,val| acc + val }).to eq(6)
  end

  it 'takes an argument and sets accumulator' do
    expect(array.injecting(100) { |acc,val| acc + val }).to eq(106)
  end

  it 'is able to use multiplication' do
    expect(array.injecting(100) { |acc,val| acc * val }).to eq(600)
  end

  it 'returns longest word from array' do
    array = ['hi','hello','wow']
    expect(array.injecting { |first_w,next_w| first_w.length > next_w.length ? first_w : next_w }).to eq("hello")
  end

end
