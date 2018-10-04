puts "I'm going to do some math!"
puts "Can I have your first number?"
num1 = gets.chomp
puts "Thanks! Can I have your second number?"
num2 = gets.chomp

print "#{num1} plus #{num2} equals " 
print (num1.to_i + num2.to_i)