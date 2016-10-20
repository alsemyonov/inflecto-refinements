require 'spec_helper'

RSpec.describe Numeric, '.ordinalize' do
  using Inflecto::Refinements

  context 'when number ends with digit 1' do
    it 'adds -th suffix when number ends with 11', :aggregate_failures do
      [-1011, -111, -11, 11, 111, 1011].each do |number|
        expect(number.ordinalize).to eq("#{number}th")
      end
    end

    it 'adds -st suffix when number does not end with 11', :aggregate_failures do
      [1, 21, 101, 1001].each do |number|
        expect(number.ordinalize).to eq("#{number}st")
      end
    end
  end

  context 'when number ends with digit 2' do
    it 'adds -th suffix when number ends with 12', :aggregate_failures do
      [-1012, -112, -12, 12, 112, 1012].each do |number|
        expect(number.ordinalize).to eq("#{number}th")
      end
    end

    it 'adds -nd suffix when number does not end with 12', :aggregate_failures do
      [2, 22, 102, 1002].each do |number|
        expect(number.ordinalize).to eq("#{number}nd")
      end
    end
  end

  context 'when number ends with digit 3' do
    it 'adds -th suffix when number ends with 13', :aggregate_failures do
      [-1013, -113, -13, 13, 113, 1013].each do |number|
        expect(number.ordinalize).to eq("#{number}th")
      end
    end

    it 'adds -rd suffix when number does not end with 13', :aggregate_failures do
      [3, 23, 103, 1003].each do |number|
        expect(number.ordinalize).to eq("#{number}rd")
      end
    end
  end

  it 'ordinalizes other numbers with -th suffix', :aggregate_failures do
    [-4, 4, 5, 6, 7, 8, 9, 10, 14, 15, 16].each do |number|
      expect(number.ordinalize).to eq("#{number}th")
    end
  end
end
