def get_century (year)
  return 'invalid year' if year.to_s.length < 3
  year = year.is_a?(String) ? year : year.to_s
  year[0...-2]
end

y1 = 2019
y2 = 3001
y3 = 230
y4 = 10

puts get_century(y1)
puts get_century(y2)
puts get_century(y3)
puts get_century(y4)