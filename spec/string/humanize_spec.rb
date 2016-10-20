require 'spec_helper'

RSpec.describe String, '.humanize' do
  using Inflecto::Refinements

  it 'replaces _ with space: humanizes employee_salary as Employee salary' do
    expect(i('employee_salary').humanize).to eq('Employee salary')
  end

  it 'strips _id endings: humanizes author_id as Author' do
    expect(i('author_id').humanize).to eq('Author')
  end

  it 'uses user added rules when possible' do
    Inflecto.inflections do |inflect|
      inflect.human('Question', 'Fancy question')
      inflect.human('questionary', 'Questionnaire')
    end

    expect(i('questionary').humanize).to eq('Questionnaire')
  end
end
