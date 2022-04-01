# arr = [1,3,5,7,9,11]
# number = 3



# def does_appear(array,number)
#     array.include?(number)
# end

# puts does_appear(arr, number)

#----------------------------------------------------------------

number = ""

#check if user input is a negative number or 0
while number.to_i.positive? == false
    puts "Please enter a number between 0 and 100"
    number = gets.chomp().to_i
end

if number > 0 && number < 50
    puts "#{number} is between 0 and 50"
elsif number > 51 && number < 100
    puts "#{number} is between 51 and 100"
elsif number > 100
    puts "#{number} is above 100"
else
    puts "#{number} does not satisfy any condition"
end