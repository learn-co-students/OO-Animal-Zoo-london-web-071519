require 'pry'
require_relative 'lib/animal'
require_relative 'lib/zoo'

# My seed data
z1 = Zoo.new("ZSL Zoo", "London")
z2 = Zoo.new("Battersea Zoo", "London")
z3 = Zoo.new("Hanwell Zoo", "West London")

a1 = Animal.new("Gorilla","150","Coco","ZSL Zoo")
a2 = Animal.new("Okapi","250","Daisy","Battersea Zoo")
a3 = Animal.new("Panda","85","Goofy","Battersea Zoo")
a4 = Animal.new("Elephant","5800","Holly","ZSL Zoo")
a5 = Animal.new("Indian Rhino","2100","Hutch","Hanwell Zoo")
a6 = Animal.new("Jaguar","85","Jasper","Hanwell Zoo")
a8 = Animal.new("Giraffe","800","Luca","ZSL Zoo")
a9 = Animal.new("Chimpanzee","50","Maya","Hanwell Zoo")
a10 = Animal.new("Elephant","5500","Wilbur","ZSL Zoo")

# Methods i've tested to confirm my code against requirements
Animal.all
Zoo.all
a1.weight = 160
z1.animals
z2.animals
z1.animal_nicknames
z1.animal_species 
z1.find_by_species("Elephant")
a1.zoo
a2.zoo
Zoo.find_by_location("London")

binding.pry