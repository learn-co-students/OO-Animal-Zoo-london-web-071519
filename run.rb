require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bat = Animal.new("Bat", "bart", 12)
cat = Animal.new("Cat", "kitty", 23)
bat2 = Animal.new("Bat", "franklin", 8)

london = Zoo.new("London Zoo", "UK")
national = Zoo.new("National Zoo", "D.C.")

london.add_animals(bat2)
london.add_animals(cat)


# binding.pry
# puts "done"
