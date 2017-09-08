
class TwoStr
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end




  def anagram
    # array1 = @str1.donwcase.split(' ')
    # array2 = @str2.downcase.split(' ')

    #checks if words contain a vowel
    if word?(@str1) and word?(@str2)
      #checks if anagram
      if @str1.downcase.split('').sort == @str2.downcase.split('').sort
        response = 'These two words are anagrams'
        #checks if palindrone
        if @str1.downcase.reverse == @str1.downcase
          response.concat(", #{@str1} is a palindrone")
        elsif @str2.downcase.reverse == @str2.downcase
          response.concat(", #{@str2} is a palindrone")
        end
      else
        #checks if the two words match any characters
        if @str1 =~ /[#{@str2}]/
          response ='These two words are not anagrams'
        else
          response = 'These two words are antigrams'
        end
      end
    else
      response = 'Please use real words'
    end
    response
  end

  def word?(word)
    word =~ /[aeiou]/
  end


end
