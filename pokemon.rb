Polymorphism : Inheritance
class Pokemon
  def initialize(name)
    @name = name
  end

  def type
    puts "#{@name} is a element type pokemon"
  end

  def send_out
    puts "#{@name}, I choose you!"
  end

  def attack
    puts "#{@name}, use your special attack!"
  end
end

class Lightning < Pokemon
  def type
    puts "#{@name} is a lightning type pokemon."
  end

  def attack 
    puts "#{@name}, use thunderbolt!"
  end
end

class Water < Pokemon
  def type
    puts "#{@name} is a water type pokemon."
  end

  def attack 
    puts "#{@name}, use water cannon!"
  end
end

squirtle = Water.new("Squirtle")
squirtle.attack
squirtle.type
pikachu = Lightning.new("Pikachu")
pikachu.attack
pikachu.type













# Polymorphism : Duck-Typing

# class Pokemon
#   def type(element)
#     element.type
#   end
# end

# class Lightning
  
#   def type
#     puts "This is a lightning type pokemon"
#   end
# end

# class Water
  
#   def type
#     puts "This is a water type pokemon"
#   end
# end

# pokemon = Pokemon.new
# pikachu = Lightning.new
# pokemon.type(pikachu)

# squirtle = Water.new
# pokemon.type(squirtle)


