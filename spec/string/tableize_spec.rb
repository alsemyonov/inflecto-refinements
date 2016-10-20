require 'spec_helper'

RSpec.describe String, '.tableize' do
  using Inflecto::Refinements

  it 'pluralizes last word in snake_case strings: fancy_category => fancy_categories' do
    expect(i('fancy_category').tableize).to eq('fancy_categories')
  end

  it 'underscores CamelCase strings before pluralization: enlarged_testis => enlarged_testes' do
    expect(i('enlarged_testis').tableize).to eq('enlarged_testes')
  end

  it 'underscores CamelCase strings before pluralization: FancyCategory => fancy_categories' do
    expect(i('FancyCategory').tableize).to eq('fancy_categories')
  end

  it 'underscores CamelCase strings before pluralization: EnlargedTestis => enlarged_testes' do
    expect(i('EnlargedTestis').tableize).to eq('enlarged_testes')
  end

  it 'replaces :: with underscores: My::Fancy::Category => my_fancy_categories' do
    expect(i('My::Fancy::Category').tableize).to eq('my_fancy_categories')
  end

  it 'underscores CamelCase strings before pluralization: Enlarged::Testis => enlarged_testes' do
    expect(i('Enlarged::Testis').tableize).to eq('enlarged_testes')
  end
end
