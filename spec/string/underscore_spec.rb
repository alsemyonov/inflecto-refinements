require 'spec_helper'

RSpec.describe String, '.underscore' do
  using Inflecto::Refinements

  it 'underscores DataMapper as data_mapper' do
    expect(i('DataMapper').underscore).to eq('data_mapper')
  end

  it 'underscores Merb as merb' do
    expect(i('Merb').underscore).to eq('merb')
  end

  it 'underscores DataMapper::Resource as data_mapper/resource' do
    expect(i('DataMapper::Resource').underscore).to eq('data_mapper/resource')
  end

  it 'underscores Merb::BootLoader::Rackup as merb/boot_loader/rackup' do
    expect(i('Merb::BootLoader::Rackup').underscore).to eq('merb/boot_loader/rackup')
  end

  it 'underscores data-mapper as data_mapper' do
    expect(i('data-mapper').underscore).to eq('data_mapper')
  end

  it 'underscores CLI as cli' do
    expect(i('CLI').underscore).to eq('cli')
  end

  it 'underscores castleKing as castle_king' do
    expect(i('castleKing').underscore).to eq('castle_king')
  end

  it 'underscores CLIRunner as cli_runner' do
    expect(i('CLIRunner').underscore).to eq('cli_runner')
  end
end
