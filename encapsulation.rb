class Book
  def initialize(title, author)
    @title = title
    @author = author
  end

  def info
    "This book is called #{@title} by #{@author}"
  end
end

book1 = Book.new("Harry Potter", "JK Rowling")
book2 = Book.new("Digital Fortress", "Dan Brown")

# puts book1.info
# puts book2.info

class Coffee
  def initialize(type, shots)
    @type = type
    @shots = shots
  end

  def timpla
    if @shots > 1
      "This coffee is #{@type} with #{@shots} shots of espresso"
    else
      "This coffee is #{@type} with a shot of espresso"
    end
  end
end

coffee1 = Coffee.new("sweet & creamy", 1)
coffee2 = Coffee.new("strong", 2)

# puts coffee1.timpla
# puts coffee2.timpla



