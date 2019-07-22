class Zoo
    attr_accessor :name, :location, :animals, :species

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @animals = []
        @@all << self
    end

    def add_animal(animal)
        @animals << animal
        animal.location = self.location
        animal.zoo = self.name
    end

    def animal_species
        species = []
        @animals.each do |animal|
            species << animal.species
        end
        species.uniq
    end

    def find_by_species(species)
        @animals.select {|animal| animal.species == species}
    end

    def animal_nicknames
        nicknames = []
        @animals.each do |animal|
            nicknames << animal.nickname
        end
        nicknames
    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        @@all.select {|zoo| zoo.location == location}
    end

end
