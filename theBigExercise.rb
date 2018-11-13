require 'date'

puts 'Can I have your full name?'
full_name = gets.chomp

puts 'Can I have the day you were born?'
birthday_day = gets.chomp.to_i

puts 'Can I have the month you were born?'
birthday_month = gets.chomp.to_i

puts 'Can I have your year of birth?'
birthday_year = gets.chomp.to_i

today = Date.today
birthday_this_year = Date.new(today.year, birthday_month, birthday_day)

if birthday_this_year > today
  birthday_today_offset = 1
else
  birthday_today_offset = 0
end

age = (today.year - birthday_year - birthday_today_offset)

if age <= 15
  puts 'Has your parent given you permission to use this programme? (yes or no)' 
  answer = gets.chomp
end

if (answer == 'yes' && age <= 6) || (age >= 70)
  puts "Well done #{full_name}! For someone who is #{age}, you're doing great using a computer!"
elsif answer == 'no'
  puts "Sorry #{full_name}, but you are not authorised to use this programme"
else
  puts "Your name is #{full_name}, as you were born on #{birthday_day}/#{birthday_month}/#{birthday_year}, that makes you #{age} years old"
end

puts 'Oh, and happy birthday!!' if (birthday_day == today.day) && (birthday_month == today.month)
