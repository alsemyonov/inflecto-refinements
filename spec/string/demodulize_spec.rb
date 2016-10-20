require 'spec_helper'

RSpec.describe String, '.demodulize' do
  using Inflecto::Refinements

  it 'demodulizes module name: DataMapper::Inflecto => Inflecto' do
    expect(i('DataMapper::Inflecto').demodulize).to eq('Inflecto')
  end

  it 'demodulizes module name: A::B::C::D::E => E' do
    expect(i('A::B::C::D::E').demodulize).to eq('E')
  end
end
