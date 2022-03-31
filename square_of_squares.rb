# puts "Enter a number:"
# number = gets.chomp().to_i
# result = Math.sqrt(number).to_i
# if (result * result) == number
#     puts "#{number} => true" 
# else
#     puts "#{number} => false"
# end

puts "Enter a number:"
number = gets.chomp()
non_perfect_square = ["2", "3", "7", "8"]
perfect_square = [0,1,4,7,9]

#if last digit ends in a non perfect square digit
if non_perfect_square.include? number[-1]
    puts "#{number} => false"

#if digital sum of the number includes perfect square
else
    str_arr = number.split("")
    sum_of_digits_1 = str_arr.map(&:to_i).reduce(0, :+)

    if sum_of_digits_1 > 9
        num_arr = sum_of_digits_1.to_s.split("")
        sum_of_digits_2 = num_arr.map(&:to_i).reduce(0, :+)
        
        if perfect_square.include? sum_of_digits_2
            puts "#{number} => true"
        else
            puts "#{number} => false"
        end
    else
        if perfect_square.include? sum_of_digits_1
            puts "#{number} => true"
        else
            puts "#{number} => false"
        end
    end
end
