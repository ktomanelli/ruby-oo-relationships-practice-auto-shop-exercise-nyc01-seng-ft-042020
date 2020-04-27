require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kyle = CarOwner.new('kyle')
john = CarOwner.new('john')
jenna = CarOwner.new('jenna')

mike = Mechanic.new('mike','hybrid')
joe = Mechanic.new('joe','clunker')
nick = Mechanic.new('nick','electric')

prius = Car.new('toyota','prius','hybrid')
prius2 = Car.new('toyota','prius','hybrid')
prius3 = Car.new('toyota','prius','hybrid')
volt = Car.new('chevy','volt','electric')
pinto = Car.new('ford','pinto','clunker')

prius.owner = john
volt.owner = kyle
prius2.owner = kyle
prius3.owner = kyle
pinto.owner = jenna

# # puts Car.find_mechanics('hybrid')
# # puts Car.classification
# #puts kyle.cars
# #puts CarOwner.average_number_of_cars
# prius.mechanic = Car.find_mechanics(prius.classification)[0]
# prius2.mechanic = Car.find_mechanics(prius2.classification)[0]
# volt.mechanic = Car.find_mechanics(volt.classification)[0]
# pinto.mechanic = Car.find_mechanics(pinto.classification)[0]
# #puts john.mechanics

# puts mike.car_owners
# puts mike.car_owners_names


#binding.pry
