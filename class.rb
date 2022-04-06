# class Person
#   def initialize(name, country, sex)
#     @name = name
#     @country = country
#     @sex = sex
#   end

#   def introduce
#     puts "Hi, I'm #{@name}. I am from #{@country}."
#   end

#   def flirt
#     puts "Hey girl, I'm boy" if @sex == "male"
#     puts "Hey boy, I'm girl" if @sex == "female"
#   end
# end

# person1 = Person.new("Pwe", "Russia", "female")
# person1.introduce
# person1.flirt



# class Profile
#   attr_accessor :full_name, :age, :address, :work
#   def initialize(full_name, age, address, work)
#     @full_name = full_name
#     @age = age
#     @address = address
#     @work = work
#   end
# end

# my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

# puts my_profile.full_name
# my_profile.full_name = 'Juan Cruz'

# my_profile.age = 25
# my_profile.work = 'Software Engineer'

# puts my_profile.full_name
# puts my_profile.age
# puts my_profile.work
# puts my_profile.address

# class Animal
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   def speak
#     super + " from GoodDog class"
#   end
# end

# sparky = GoodDog.new("PWE")
# puts sparky.speak
# puts sparky.name

# module Swimmable
#   def swim
#     "I'm swimming!"
#   end
# end

# class Animal; end

# class Fish < Animal
#   include Swimmable
# end

# dory = Fish.new
# puts dory.swim

# module Language
#   module Lakomaisip
#     class Programming
#       def info
#         'tumpak'
#       end
#     end
#   end
  

#   class Ruby < Lakomaisip::Programming
#     def info
#       "#{super} Ruby Programming Language"
#     end
#   end

#   class Python
#     def info
#       puts "Python Programming Language"
#     end
#   end
# end

# ruby = Language::Ruby.new
# puts ruby.info

# class Person
#   def initialize(age)
#     @age = age
#   end

#   def age_after_1_yr
#     puts get_age + 1
#   end

#   private
#   def get_age
#     @age
#   end
# end

# ana = Person.new(25)
# ana.age_after_1_yr

# class Animal

#   def initialize(age)
#     @age = age
#   end

#   def <(animal)
#     age < (animal.age)
#   end

#   protected

#   def age
#     @age
#   end
# end

# fido = Animal.new(3)
# cat = Animal.new(2)
# puts fido < cat

# class Confection
#   def bake
#     puts 'Baking at 350 degrees for 25 minutes'
#   end
# end

# # CupCake  template
# class CupCake < Confection
#   def frost
#     puts 'Applying frosting'
#   end
# end

# # BananaCake  template
# class BananaCake < Confection
# end

# confectionOne =  Confection.new
# cupCakeOne =  CupCake.new
# bananaCakeOne = BananaCake.new

# confectionOne.bake
# cupCakeOne.bake
# cupCakeOne.frost
# bananaCakeOne.bake


# module AdminPermisson
#   def edit_users_profile
#     puts "Admin updated all users profile"
#   end
# end

# module BuyerPermission
#   def buy
#     puts "Buyer has bought an item"
#   end
# end

# class User

#   def initialize(username, password, ip_address)
#     @username = username
#     @password = password
#     @ip_address = ip_address
#   end

#   def change_password=(password)
#     password_changer(password)
#     puts "Password changed!"
#   end

  
#   protected
#   def login
#     puts "User logged in. IP address: #{@ip_address}"
#   end

#   def password_changer(password)
#     @password = password
#   end

# end


# class Admin < User
#   include AdminPermisson
#   def admin_login
#     self.login
#   end
# end


# class Buyer < User
#   include BuyerPermission
#   def buyer_login
#     self.login
#   end
# end



# ## execute

# my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
# my_admin.admin_login
# my_admin.edit_users_profile

# my_admin.change_password = 'new_password'

# buyer = Buyer.new('juan', 'password', '127.0.0.1')
# buyer.buyer_login
# buyer.buy

# buyer.change_password = 'new_password'



#ENCAPSULATION
# class Transaction
#   def initialize(quantity, price)
#     @quantity = quantity
#     @price = price
#   end

#   def total
#     @quantity * @price
#   end
# end

# transact = Transaction.new(5, 100)
# puts transact.total


#ABSTRACTION
# class Transaction

#   def initialize(quantity, price, discount=false)
#     @quantity = quantity
#     @price = price
#     @discount = discount
#   end

#   def total_transaction
#     total_price - get_discount
#   end

#   private

#   def total_price
#     @quantity * @price
#   end

#   def get_discount
#     discount_price = @discount ? 10 : 0
#   end
# end

# transact = Transaction.new(10, 899, true)
# puts transact.total_transaction

#POLYMMORPHISM : INHERITANCE

# class Person
#   def initialize(first, last, age)
#     @first_name = first
#     @last_name = last
#     @age = age
#   end

#   def birthday
#     @age += 1
#   end

#   def introduce
#     puts "Hi everyone. My name is #{@first_name} #{@last_name}"
#   end
# end

# class Student < Person
#   def introduce
#     puts "Hello teacher. My name is  My name is #{@first_name} #{@last_name}"
#   end
# end

# class Teacher < Person
#   def introduce
#     puts "Hello class.  My name is #{@first_name} #{@last_name}"
#   end
# end

# john = Student.new("John", "Doe", 18)
# john.introduce
# imee = Teacher.new("Imee", "Santos", 35)
# imee.introduce


#POLYMMORPHISM : DUCK-TYPING

class Payment

  def type(payment)
    payment.type
  end
end

class FullyPaid

  def type
    puts "Full paid payment"
  end
end

class Installment

  def type
    puts "Installment payment"
  end
end

customer_payment = Payment.new
full = FullyPaid.new
customer_payment.type(full)

installment = Installment.new
customer_payment.type(installment)