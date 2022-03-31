# puts "Enter a number:"
# number = gets.chomp().to_i
# squared_number = Math.sqrt(number)
# if (squared_number * squared_number) == number
#     puts "#{number} => true" 
# else
#     puts "#{number} => false"
# end

puts "Enter a number:"
number = gets.chomp()
non_perfect_square = ["2", "3", "7", "8"]
perfect_square = [0,1,4,7,9]

#if number is a single digit number
if number.length == 1
    if number == "4" || number == "9"
        puts "#{number} => true"
    else
        puts "#{number} => false"
    end
#if last digit ends in a non perfect square digit
elsif non_perfect_square.include? number[-1]
    puts "#{number} => false"

#if instance of 0's in the number is odd
elsif number[-1] == "0"
    instance_of_0 = number.count("0")
    if instance_of_0 % 2 != 0
        puts "#{number} => false"
    end

#if number ends in 6 and 2nd to last digit is odd    
elsif number[-1] == "6"
    if number.length == 1  
    elsif number[-2] % 2 != 0
        if number.length == 3
            if number[-2] == "9"
                puts "#{number} => true"
            else
                puts "#{number} => false"
            end
        elsif number.length == 2
            if number[-2] == "1" || number[-2] == "3"
                puts "#{number} => true"
            else
                puts "#{number} => false"
            end    
        else
            puts "#{number} => false"
        end
    else
        puts "#{number} => false"
    end

#if number ends in 5 and 2nd to last digit is 2
elsif number[-1] == "5"
    if number[-2] == "2"
        if number.length == 3
            if number[-3] == "2" || number[-3] == "6"
                puts "#{number} => true"
            else
                puts "#{number} => false"
            end
        elsif number.length == 2
            if number[-2] == "2"
                puts "#{number} => true"
            else
                puts "#{number} => false"
            end    
        else
            puts "#{number} => false"
        end
    else
        puts "#{number} => false"
    end

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
