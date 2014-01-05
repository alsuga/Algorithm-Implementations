require 'rspec'
require './bubble_sort'

describe '#bubble_sort' do
  context 'Not sorted' do
    before(:each) { @array = ['S','O','R','T','E','X','A','M','P','L','E'] }

    it 'orders the array' do
      sorted_array = bubble_sort(@array)
      expect(sorted_array).to eq @array.sort
    end
  end

  context 'Empty array' do
    before(:each) { @array = [] }

    it 'returns an empty array' do
      sorted_array = bubble_sort(@array)
      expect(sorted_array).to eq []
    end
  end
end

