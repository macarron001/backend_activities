# puts "Enter a number"
# number1 = gets.chomp().to_i
# puts "Enter another number"
# number2 = gets.chomp().to_i
# sum = number1 + number2
# puts "The sum is #{sum}"

puts "Hello! This is a calculator"
puts "Enter the first number"
number1 = gets.chomp().to_i
puts "Enter the operator"
operator = gets.chomp()
puts "Enter the second number"
number2 = gets.chomp().to_i

if operator == "+"
    answer = number1 + number2
    puts "The sum is #{answer}"
elsif operator == "-"
    answer = number1 - number2
    puts "The difference is #{answer}"
elsif operator == "*"
    answer = number1 * number2
    puts "The product is #{answer}"
elsif operator == "/"
    answer = number1 / number2
    puts "The quotient is #{answer}"
else
    puts "Please put a valid operator"
end
