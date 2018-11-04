require 'date'

today = DateTime.now

puts 'Can I have your full name?'
name = gets.chomp

puts "Can I have the day you were born?"
day = gets.chomp.to_i

puts "Can I have the month you were born?"
month = gets.chomp.to_i

puts "Can I have your year of birth?"
year = gets.chomp.to_i

today = Date.today
d = Date.new(today.year, month, day)
age = d.year - year - (d > today ? 1 : 0)

if age <= 15
  puts 'Has your parent given you permission to use this programme? (yes or no)'
  answer = gets.chomp
end
if answer == 'yes' && (age <= 6) || (age >= 70)
  puts "Well done #{name}! For someone who is #{age}, you're doing great using a computer!"

elsif answer == 'no'
  puts "Sorry #{name}, but you are not authorised to use this programme"
else
  puts "Your name is #{name} and you are #{age} years old"
end
