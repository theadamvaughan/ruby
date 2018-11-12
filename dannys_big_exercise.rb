# Write a program that asks for your name, month and year of birth.
# It should tell you how old you are.
# If you're under 6 or over 70, it should compliment you on your ability to use a computer.
# If you're under 16, it should ask if your parent has given permission for you to use the program before printing your age.

require 'date'

def ask_question(label)
  puts "Enter your #{label}:"
  return gets.chomp
end

permission = true

name = ask_question('full name')
birth_month = ask_question('year of birth')


puts 'Enter your month of birth:'
birth_month = gets.chomp.to_i

puts 'Enter your year of birth:'
birth_year = gets.chomp.to_i

birthday = Date.new(birth_year, birth_month, birth_day)
age = (Date.today - birthday).to_i / 365

if age < 16
  puts 'Have your parents given you permission? (yes/no)'
  response = gets.chomp
  if response == 'no'
    puts 'You need parental permission'
    permission = false
  end
end

if permission
  puts 'Wow. You can use a computer!' if age < 5 || age > 70
  puts "Hello #{name.capitalize}, you are about #{age} years old!" 
end
