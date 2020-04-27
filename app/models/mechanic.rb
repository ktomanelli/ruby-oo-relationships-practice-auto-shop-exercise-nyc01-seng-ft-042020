class Mechanic

  attr_reader :name, :specialty

  @@all = []
  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    Mechanic.all<<self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |i|
      i.mechanic==self
    end
  end

  def car_owners
    cars.map do |i|
      i.owner
    end
  end

  def car_owners_names
    car_owners.map do |i|
      i.name
    end
  end

end
