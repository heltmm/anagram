require('rspec')
require('anagram')
require('pry')

describe('TwoStr#anagram') do

  # test1 = TwoStr.new('ruby', 'bury')
  # it('checks if two words are anagrams')do
  #   expect(test1.anagram).to eq('These two words are anagrams')
  # end

  test2 = TwoStr.new('ruby', 'hury')
  it('checks if two words are not anagrams')do
    expect(test2.anagram).to eq('These two words are not anagrams')
  end

  test3 = TwoStr.new('Tea', 'Eat')
  it('checks if two words with different cases are anagrams')do
    expect(test3.anagram).to eq('These two words are anagrams')
  end

  test4 = TwoStr.new('add', 'dad')
  it('checks if two words are anagrams, if so checks if palindrone')do
    expect(test4.anagram).to eq('These two words are anagrams, dad is a palindrone')
  end
  test5 = TwoStr.new('ruby', 'br')
  it('checks if inputs are words')do
    expect(test5.anagram).to eq('Please use real words')
  end

  test6 = TwoStr.new('hi', 'bye')
  it('if not anagagram check if antigram')do
    expect(test6.anagram).to eq('These two words are antigrams')
  end
  # it('checks if two sentences are anagrams')do
  #   expect(newStr('ruby', 'bury')).to eq(true)
  # end
end
