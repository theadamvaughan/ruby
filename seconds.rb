puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.to_i

age1 = age * 31536000

puts "Hi #{name}! you are approx #{age1} seconds old!"