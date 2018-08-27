class PigLatinizer
  attr_accessor :word

  def initialize
    @word = word
  end


  def pig_find_index(word)
    vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    word_array = word.split("")
    word_array.each_with_index do |each_letter, index|
      vowel.each do |each_vowel|
        if each_letter == each_vowel
          return index
        end
      end
    end
  end

  def pig_word(word, index)
    if index == 0
      return word + "way"
    else
      word[index..-1] + word[0..index-1] + "ay"
    end
  end


  def piglatinize(string)
      word_array = string.split(" ")
      if word_array.length == 1
        index = pig_find_index(string)
        return pig_word(string, index)
      else
        a = word_array.map do |each_word|
          index = pig_find_index(each_word)
            pig_word(each_word, index)
        end
        return a.join(" ")
      end
  end


end #end of class
