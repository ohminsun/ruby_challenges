class Word < ActiveRecord::Base 
    
  before_create :add_letters
    
  def add_letters
  characters = self.text.chars
  alphabetized_characters = characters.sort
  self.letters = alphabetized_characters.join
  end
     
  def self.find_anagrams(string)
  letters = string.split(//)
 
  anagrams = []
 
  letters.each do |letter|
    remaining = letters.select { |l| l != letter }
  end
 
    anagrams << letter + remaining.join('')
 
    anagrams << letter + reverse_letters(remaining).join('')
    
    potential_anagram = first_letter + reversed_letters
    if Word.find_by_text(potential_anagram).present? 
      combinations << potential_anagram
    end
     
  def self.reverse_letters(letters)
  length = letters.length
  reversed_letters = Array.new(length)
  end
    
  letters.each_with_index do |letter, index|
  reversed_letters[length - index - 1] = letter
  end
      
  def three_letters?(input)
   if input.length = 3
     true
   else
     false
    end
  end
          
  def distinct_letters?(input)
    letter_array = input.chars
     unique_letters = letter_array.uniq
    if unique_letters.length < letter_array.length
      false
    else
      true
      end
   end
      
  def valid_input(input)
  if input.length > 3
     raise Exception.new("Word must be less than or equal to 3 characters.")
  end           
end
      