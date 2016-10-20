require 'spec_helper'

RSpec.describe String, '.camelize' do
  using Inflecto::Refinements

  it 'camelizes data_mapper as DataMapper' do
    expect(i('data_mapper').camelize).to eq('DataMapper')
  end

  it 'camelizes merb as Merb' do
    expect(i('merb').camelize).to eq('Merb')
  end

  it 'camelizes data_mapper/resource as DataMapper::Resource' do
    expect(i('data_mapper/resource').camelize).to eq('DataMapper::Resource')
  end

  it 'camelizes data_mapper/associations/one_to_many as DataMapper::Associations::OneToMany' do
    expect(i('data_mapper/associations/one_to_many').camelize).to eq('DataMapper::Associations::OneToMany')
  end
end
