require 'spec_helper'

describe PhoneticAlphabet do
  it 'has a version number' do
    expect(PhoneticAlphabet::VERSION).not_to be nil
  end

  it 'adds a to_p method to the string class' do
    expect("".methods.include?(:to_p)).to eq(true)
  end

  it 'translates strings to their phonetic representation' do
    expect('fuck'.to_p).to eq('Foxtrot Uniform Charlie Kilo')
    expect('a'.to_p).to eq('Alfa')
    expect('a1 day'.to_p).to eq('Alfa One  Delta Alfa Yankee')
  end
end
