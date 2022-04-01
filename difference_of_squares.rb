num = 1
squared_array = []
number_array = []

while num <= 50
    squared_array.push(num ** 2)
    number_array.push(num)
    num += 1
end

sum_of_squares = squared_array.map(&:to_i).reduce(0, :+)
sum_of_numbers = number_array.map(&:to_i).reduce(0, :+)
square_of_sum = sum_of_numbers**2
difference_between = square_of_sum - sum_of_squares

puts "The sum of the squares is #{sum_of_squares}"
puts "The square of the sum #{square_of_sum}"
puts "The difference is #{difference_between}"