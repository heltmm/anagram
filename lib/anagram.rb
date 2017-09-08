class Two_str
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end


  def anagram?
    @str1.downcase.split('').sort == @str2.downcase.split('').sort
  end
  def word?

  end


end
