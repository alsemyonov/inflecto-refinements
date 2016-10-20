require 'spec_helper'

RSpec.describe String, '.foreign_key' do
  using Inflecto::Refinements

  it 'adds _id to downcased string: Message => message_id' do
    expect(i('Message').foreign_key).to eq('message_id')
  end

  it 'demodulizes string first: Admin::Post => post_id' do
    expect(i('Admin::Post').foreign_key).to eq('post_id')
  end
end
