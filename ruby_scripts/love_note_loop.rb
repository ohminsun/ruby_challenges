puts "Are you being good today? Please answer yes or no."
answer = gets.chomp.downcase

while (answer == "no")
    puts "It's okay, I still love you."
    answer = gets.chomp.downcase
end

while (answer == "yes")
    puts "I love you so much."
    answer = gets.chomp.downcase
end

