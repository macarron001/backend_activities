# arr = [1,3,5,7,9,11]
# number = 3



# def does_appear(array,number)
#     array.include?(number)
# end

# puts does_appear(arr, number)

#----------------------------------------------------------------

# number = ""

# #check if user input is a negative number or 0
# while number.to_i.positive? == false
#     puts "Please enter a number between 0 and 100"
#     number = gets.chomp().to_i
# end

# if number > 0 && number < 50
#     puts "#{number} is between 0 and 50"
# elsif number > 51 && number < 100
#     puts "#{number} is between 51 and 100"
# elsif number > 100
#     puts "#{number} is above 100"
# else
#     puts "#{number} does not satisfy any condition"
# end

#----------------------------------------------------------------

# keyword = "STOP"
# input = ""
# while input != keyword
#     puts "Enter anything to get a random number - otherwise STOP"
#     input = gets.chomp()
#     if input == keyword
#         break
#     end
#     puts rand(0...100)
# end

#----------------------------------------------------------------

arr = [6,3,1,8,4,2,10,65,102]

def is_divisible (array)
    divisible_by_two = Array.new
    array.map do |number|
        if number % 2 == 0
            divisible_by_two.push(number)
        end
    end
    puts divisible_by_two.join(" ")
end
is_divisible(arr)

# arr = [6,3,1,8,4,2,10,65,102]
# new_arr = []
# arr.map do |number|
#     if number % 2 == 0
#         new_arr.push(number)
#     end
# end
# puts new_arr.join(" ")
