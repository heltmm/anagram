require('rspec')
require('anagram')
require('pry')

describe('Str#anagram') do

  test1 = Two_str.new('ruby', 'bury')
  it('checks if two words are anagrams')do
    expect(test1.anagram).to eq('These two words are anagrams')
  end

  test2 = Two_str.new('ruby', 'hury')
  it('checks if two words are not anagrams')do
    expect(test2.anagram).to eq('These two words are not anagrams')
  end

  test3 = Two_str.new('Tea', 'Eat')
  it('checks if two words with different cases are anagrams')do
    expect(test3.anagram).to eq('These two words are anagrams')
  end

  # it('checks if two words are anagrams, if so checks if palindrone')do
  #   expect(newStr.anagram).to eq(true)
  # end
  # it('checks if inputs are words')do
  #   expect(newStr('ruby', 'br')).to eq('You need to input actual words!')
  # end
  # it('if not anagagram check if antigram')do
  #   expect(newStr('hi', 'bye')).to eq('these words are antigrams')
  # end
  # it('checks if two sentences are anagrams')do
  #   expect(newStr('ruby', 'bury')).to eq(true)
  # end
end
