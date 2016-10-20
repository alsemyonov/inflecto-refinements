require 'spec_helper'

RSpec.describe String, '.classify' do
  using Inflecto::Refinements

  it 'classifies data_mapper as DataMapper' do
    expect(i('data_mapper').classify).to eq('DataMapper')
  end

  it 'classifies data.mapper as Mapper' do
    expect(i('data.mapper').classify).to eq('Mapper')
  end

  it 'classifies enlarged_testes as EnlargedTestis' do
    expect(i('enlarged_testes').classify).to eq('EnlargedTestis')
  end

  it 'singularizes string first: classifies data_mappers as egg_and_hams as EggAndHam' do
    expect(i('egg_and_hams').classify).to eq('EggAndHam')
  end
end
