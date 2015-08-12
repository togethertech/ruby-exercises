# You can copy & paste your code from the last exercise to get started here
# Create a class called Car with the following things in it
# A class variable called cars_count and assign 0 to it
# Every time a new car is created, add 1 to the cars_count
# Write a class method called count, it should print to the console
# Hello, I have made <cars_count> cars
# Write an instance method, called introduce, it should print to the console
# Hello, I am a car that was made in a factory
# After ending the class, call the count class variable
# It should say "I have made 0 cars"
# Create 4 cars, call the introduce method on one of them
# It should say "Hello, I am a car that was made in a factory"
# Call the count class variable again
# It should say "I have made 4 cars"

class Car
  @@cars_count = 0
  attr_reader :serial_number

  def initialize(name)
    @name = name
    @@cars_count += 1
    @serial_number = @@cars_count
  end

  def introduce
    puts "I am a #{@name} that came from a factory that made #{@@cars_count} cars and my serial number is #{@serial_number}"
  end
  
  def self.count
    puts "I have made #{@@cars_count} cars"
  end

  def naughty
    puts "I am a naughty car hacker and I am going to change the factory's books"
    @@cars_count += 9999999
  end
end

Car.count
gti = Car.new(" gti ")
gti.introduce
citigolf = Car.new("chico")

citigolf.introduce
gti.naughty
jetta = Car.new("jetta")

jetta.introduce