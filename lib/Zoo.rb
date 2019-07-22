class Zoo

  attr_reader :name, :location

  @@all = []

  def initialize(name:, location:)
    @name = name
    @location = location

    "This is the #{name} zoo!... located in #{location}"

    @@all << self
  end

  def self.location
    @location
  end

  def self.name
    @name
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select {|animal| animal.zoo = @name}
  end

  def animal_species
    animals.map {|species| species.species}.uniq
    # animals.map {|species| species.species}
  end

  def find_by_species(find_species:)
    animals.select {|species| species.species == find_species}
  end

  def animal_nicknames
    animals.map {|nickname| nickname.nickname}
  end

  def find_by_location(location:)
    Zoo.all.select{|zoo| zoo.location == location}
  end

end
