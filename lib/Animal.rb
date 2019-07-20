class Animal

    attr_accessor :zoo, :weight
    attr_reader :species, :nickname

    @@all = []

    def initialize(zoo, species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(my_species)
        Animal.all.select do |animal|
            animal.species == my_species
        end
    end

   

end
