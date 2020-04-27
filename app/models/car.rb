class Car

  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic

  @@all = []
  def initialize(make, model, classification)
    @owner
    @mechanic
    @make = make
    @model = model
    @classification = classification

    Car.all<<self
  end

  def self.all
    @@all
  end

  def self.classification
    Car.all.map do |car|
      car.classification
    end
  end

  def self.find_mechanics(classification)
    Mechanic.all.select do |mechanic|
      mechanic.specialty == classification
    end
  end

end
