puts "Hello! This is a calculator"
puts "Enter the first number"
number1 = gets.chomp().to_f
puts "Enter the operator"
operator = gets.chomp()
puts "Enter the second number"
number2 = gets.chomp().to_f

case operator
when "+"
    answer = number1 + number2
    puts "The sum is #{answer}"
when "-"
    answer = number1 - number2
    puts "The difference is #{answer}"
when "*"
    answer = number1 * number2
    puts "The product is #{answer}"
when "/"
    answer = number1 / number2
    puts "The quotient is #{answer}"
else
    puts "Please put a valid operator"
end

# puts "Enter a number"
# number1 = gets.chomp().to_i
# puts "Enter another number"
# number2 = gets.chomp().to_i
# sum = number1 + number2
# puts "The sum is #{sum}"

# if operator == "+"
#     answer = number1 + number2
#     puts "The sum is #{answer}"
# elsif operator == "-"
#     answer = number1 - number2
#     puts "The difference is #{answer}"
# elsif operator == "*"
#     answer = number1 * number2
#     puts "The product is #{answer}"
# elsif operator == "/"
#     answer = number1 / number2
#     puts "The quotient is #{answer}"
# else
#     puts "Please put a valid operator"
# end
