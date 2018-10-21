date = Time.now.strftime('%d/%m/%Y')

puts 'Can I have your full name?'
  name = gets.chomp

puts 'Can I have your year of birth? (YYYY)'
  yob = gets.chomp.to_i

age = 2018 - yob

if age <= 15
  puts 'Has your parent given you permission to use this programme? (yes or no)'
  answer = gets.chomp
end
if answer == 'yes' && (age <= 6) || (age >= 70)
  puts "Well done #{name}! Look at you using a computer!"

elsif answer == 'no'
  puts "Sorry #{name}, but you are not authorised to use this programme"
else
  puts "Your name is #{name} and you are #{age} years old"
end
