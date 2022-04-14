def disemvowel(text)
  return [] if text.length == 0
  text_arr = text.is_a?(String) ? text.split("") : text
  vowel_less = []
  vowels = ['a','e','i','o','u']

  text_arr.each do |text|
    vowel_less.push(text) if !vowels.any?(text.downcase)
  end
  vowel_less.join("")
end


example = "This website is for losers LOL"
puts disemvowel(example)