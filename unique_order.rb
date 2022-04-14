def unique_in_order(stuffs)
  answer = []
  if stuffs.class == String
    array = stuffs.split("")
  else
    array = stuffs
  end
  array.each_with_index do |stuff, i|
    if array[i] != array[i + 1]
      answer.push(array[i])
    end
  end
  print answer
end

whut1 = 'AAAABBBCCDDAABBB'
whut2 = 'ABBCcAD'
whut3 = [1,2,2,3,3]
puts unique_in_order(whut1)
puts unique_in_order(whut2)
puts unique_in_order(whut3)