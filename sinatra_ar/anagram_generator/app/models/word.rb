class Word
  
  require_relative 'reverse_letters'  
     
  def self.find_anagrams(string)
  letters = string.split(//)
 
  anagrams = []
 
  letters.each do |letter|
    remaining = letters.select { |l| l != letter }
 
    anagrams << letter + remaining.join('')
 
    anagrams << letter + reverse_letters(remaining).join('')
  end
     
  def self.reverse_letters(letters)
    length = letters.length
    reversed_letters = Array.new(length)
    
    letters.each_with_index do |letter, index|
        reversed_letters[length - index - 1] = letter
    end
     
end