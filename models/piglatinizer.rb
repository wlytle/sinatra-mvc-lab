class PigLatinizer
  attr_accessor :words

  #   def initialize(phrase)
  #     @phrase = phrase
  #   end

  def split_phrase(phrase)
    phrase = phrase.split(" ")
  end

  def piglatinize(phrase)
    pg = []
    split_phrase = self.split_phrase(phrase)
    split_phrase.each do |word|

      #Does it start with a vowel
      if word.match(/\b([aeiou])\w*/i)
        #add way to end of vowel starting word
        pg << word.gsub!(/\b([aeiou]\w*)\b/i, '\1way')

        #if the word begins with a consonant cluster
      elsif word.match(/[^aeiou]+/)
        pg << word.gsub!(/\b([^aeiou]+)(\w+)\b/, '\2\1ay')
      end
    end
    pg.join(" ")
  end
end
