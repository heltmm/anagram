class TwoStr
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end


  def anagram
    if @str1.downcase.split('').sort == @str2.downcase.split('').sort
      response = 'These two words are anagrams'
      if @str1.downcase.reverse == @str1.downcase
        response.concat(", #{@str1} is a palindrone")
      elsif @str2.downcase.reverse == @str2.downcase
        response.concat(", #{@str2} is a palindrone")
      end
    else
      response ='These two words are not anagrams'
    end
    response
  end


  def word?

  end


end
