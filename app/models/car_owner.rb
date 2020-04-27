class CarOwner

  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name

    CarOwner.all<<self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |i|
      i.owner==self
    end
  end

  def mechanics
    serviced_cars = cars.select do |i|
      i.mechanic != nil
    end
    if(serviced_cars)
      serviced_cars.map do |i|
        i.mechanic
      end
    end
  end

  def self.average_number_of_cars
    car_count=[]
    CarOwner.all.each do |i|
      car_count << i.cars.length.to_f
    end
    (car_count.sum)/car_count.length
  end
end
