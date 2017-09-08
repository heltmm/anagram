class Str
  def initialize(str1, str2)
    @str1 = str1
    @str2 = str2
  end

  
  def anagram?
    @str1.split('').sort == @str2.split('').sort
  end
  def word?

  end


end
