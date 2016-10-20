require 'spec_helper'

RSpec.describe String, '.dasherize' do
  using Inflecto::Refinements

  it 'dasherizes data_mapper_rspec as data-mapper-rspec' do
    expect(i('data_mapper_rspec').dasherize).to eq('data-mapper-rspec')
  end
end
