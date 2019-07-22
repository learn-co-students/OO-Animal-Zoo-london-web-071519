#can only be in one location at a time.
class Animal
    attr_accessor :weight, :location, :zoo
    attr_reader  :species, :nickname

    @@all = []
    
    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @location = nil
        @zoo = nil
        @@all << self
    end

    def self.find_by_species(species)
        @@all.select {|animal| animal.species == species}
    end

    def self.all
        @@all
    end
end
