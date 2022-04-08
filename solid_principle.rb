def count_sum(arr)
  sum = 0
  count = 0

  if arr.count == 0
    print arr
  else
    arr.each do |num|
      if num > 0
        count += 1
      else num < 0
        sum += num
      end
    end
    [sum, count]
  end
end

array = [1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14,-15]
# array = []

puts count_sum(array)