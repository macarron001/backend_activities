class Coffee
  def initialize(intensity, sugar)
    @intensity = intensity
    @sugar = sugar
  end

  def taste
    puts "Your cup: #{coffee} and #{sweetness}."
  end


  private
  def coffee
    if @intensity >= 8 && @intensity <= 10
      "strong"
    elsif @intensity >= 5 && @intensity <= 7
      "moderately intense"
    elsif @intensity >= 1 && @intensity <= 4
      "light"
    else
      "water"
    end
  end

  def sweetness
    if @sugar >= 7 && @sugar <= 10
      "sweet"
    elsif @sugar >= 5 && @sugar <= 6
      "moderately sweet"
    elsif @sugar >= 1 && @sugar <= 4
      "bitter"
    else
      ""
    end
  end
end

customer1 = Coffee.new(5,4)
customer1.taste
customer2 = Coffee.new(4,8)
customer2.taste
customer3 = Coffee.new(9,5)
customer3.taste