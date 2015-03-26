def reverse_letters(letters)
    length = letters.length
    reversed_letters = Array.new(length)
    
    letters.each_with_index do |letter, index|
        reversed_letters[length - index - 1] = letter
    end
    
    reverse_letters
end

require_relative 'reverse_letters'

def find_anagram(letters)
    length = letters.length
    anagram = Array.new(length)
    
    letters.chunk {index}
end

find_anagram
end
    
    
 

