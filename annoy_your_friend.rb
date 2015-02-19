puts "Are you annoyed with me yet?  Please answer yes or no."
answer = gets.chomp.downcase
while (answer == "no")
    puts "Are you annoyed with me yet?  Please answer yes or no."
    answer = gets.chomp.downcase
end
