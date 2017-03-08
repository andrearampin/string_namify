require 'spec_helper'

describe StringNamify do
  it 'has a version number' do
    expect(StringNamify::VERSION).not_to be nil
  end

  it 'namify simple strings' do
    expect('andrea rampin'.namify).to eq('Andrea Rampin')
  end

  it 'namify possessive strings' do
    expect("andrea's cat".namify).to eq("Andrea's Cat")
  end

  it 'namify strings with apostrophe' do
    expect("andrea o'rampin".namify).to eq("Andrea O'Rampin")
  end

  it 'namify strings with dash' do
    expect("andrea-rampin".namify).to eq("Andrea-Rampin")
  end
end
