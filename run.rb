require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1 = Zoo.new("Zoo Maxy", "Chelsea")
zoo2 = Zoo.new("Dark Zoo", "Paddington")
zoo3 = Zoo.new("Bonkers", "Chelsea")
zoo4 = Zoo.new("Tiger match", "Victoria")

animal1 = Animal.new(zoo1, "Tiger", 55, "nick")
animal2 = Animal.new(zoo1, "Lion", 100, "Imran")
animal3 = Animal.new(zoo2, "Penguin", 500, "Martin")
animal4 = Animal.new(zoo1, "Tiger", 150, "Bob")
animal5 = Animal.new(zoo3, "Whale", 78, "Joseph")
animal6 = Animal.new(zoo4, "Rat", 4, "Ully")


binding.pry
puts "done"
