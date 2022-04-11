def is_isogram(string)
  s = (string.downcase !~ /([a-z]).*\1/)
  puts s
end

is_isogram('qwerty')
is_isogram('qwertyy')
is_isogram('qwertyY')
is_isogram('qWErty')