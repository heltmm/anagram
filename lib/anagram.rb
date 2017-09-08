
class TwoStr
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end




  def anagram
    array1 = @str1.downcase.gsub(/[.,\/#!$%\^&\*;:{}=\-_`~()]/, "").split(' ')
    array2 = @str2.downcase.gsub(/[.,\/#!$%\^&\*;:{}=\-_`~()]/, "").split(' ')
    if array1.length > 1 and array2.length > 1
      string = 'sentences'
    else
      string = 'words'
    end
    string1 = array1.join('')
    string2 = array2.join('')
    #checks if words contain a vowel
    if word?(array1) and word?(array2)
      #checks if anagram
      if string1.split('').sort == string2.split('').sort
        response = "These two #{string} are anagrams"
        #checks if palindrone
        if string1.reverse == string1
          response.concat(", #{@str1} is a palindrone")
        elsif string2.reverse == string2.downcase
          response.concat(", #{@str2} is a palindrone")
        end
      else
        #checks if the two strings match any characters
        if @str1 =~ /[#{@str2}]/
          response ="These two #{string} are not anagrams"
        else
          response = "These two #{string} are antigrams"
        end
      end
    else
      response = 'Please use real words'
    end
    response
  end


  def word?(array)
    flag = true
    array.each do |word|
      if !(word =~ /[aeiou]/)
        flag = false
      end
    end
    flag
  end
end
