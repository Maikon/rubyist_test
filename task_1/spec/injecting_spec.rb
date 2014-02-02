require 'spec_helper'

describe 'injecting' do
  let(:array) { [1,2,3] }

  it 'should return the sum of the array' do
    expect(array.injecting { |acc, val| acc + val }).to eq(6)
  end

  it 'takes an argument and sets accumulator' do
    expect(array.injecting(100) { |acc, val| acc + val }).to eq(106)
  end

  it 'is able to use multiplication' do
    expect(array.injecting(100) { |acc, val| acc * val }).to eq(600)
  end

  it 'returns longest word from array' do
    array = ['hi','hello','wow']
    expect(array.injecting { |acc, val| acc.length > val.length ? acc : val }).to eq("hello")
  end

  it 'returns a hash from multi-dimensional array' do
    array = [[:name,'joe'],[:last,'doe']]
    expect(array.injecting({}) { |acc, val| acc[val.first] = val.last; acc }).to eq({:name => 'joe', :last => 'doe'})
  end

end
