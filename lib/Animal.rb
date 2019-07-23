class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo_name
    attr_writer 
    @@all = []

    # An animal should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname. Keep in mind that the animal's species and nickname should not be able to change, but its weight can.
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo_name = zoo
        @@all << self

    end

    # Animal.all should return an array of all the animal instances.
    def self.all
        @@all
    end
    
    # Animal#zoo should return the zoo instance that the instance belongs to.
    def zoo
      Zoo.all.find{|zoo| zoo.name == @zoo_name}
    end
    
    # Animal.find_by_species should take in an animal's species as an argument and return an array of all the animals, which are of that species.
    def self.find_by_species(species)
        @@all.select{|animal| animal.species == species}
    end

end