def always_three(number)
   (((number + 5) * 2 -4) / 2 - number)
end

 puts "Give me a number"
    first_number = gets.to_i

puts "Always " + always_three(first_number).to_s


always_three

puts "Give me a number"
first_number = gets.to_i
puts "Always " + (((first_number + 5) * 2 - 4) / 2 - first_number).to_s

puts "Give me a number"
first_number = gets.to_i
final_number = first_number
final_number+=5
final_number*=2
final_number-=4
final_number/=2
final_number-=first_number
puts "Always #{final_number}"

puts "Give me a number"
first_number = gets.to_i
mid_number = first_number + 5
mid_number = mid_number * 2
mid_number = mid_number - 4
mid_number = mid_number / 2
final_number = mid_number - first_number
puts "Always #{final_number}"
