class Two_str
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end


  def anagram
    if @str1.downcase.split('').sort == @str2.downcase.split('').sort
      'These two words are anagrams'
    else
      'These two words are not anagrams'
    end
  end
  def word?

  end


end
