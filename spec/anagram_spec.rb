require('rspec')
require('anagram')
require('pry')

describe('Str#anagram') do

  newStr = Str.new('ruby', 'bury')
  it('checks if two words are anagrams')do
    expect(newStr.anagram?).to eq(true)
  end
  it('checks if two words with different cases are anagrams')do
    expect(newStr('Tea', 'Eat')).to eq(true)
  end
  it('checks if two words are anagrams, if so checks if palindrone')do
    expect(newStr('racecar', 'racecar')).to eq(true)
  end
  it('checks if inputs are words')do
    expect(newStr('ruby', 'br')).to eq('You need to input actual words!')
  end
  it('if not anagagram check if antigram')do
    expect(newStr('hi', 'bye')).to eq('these words are antigrams')
  end
  it('checks if two sentences are anagrams')do
    expect(newStr('ruby', 'bury')).to eq(true)
  end
end
