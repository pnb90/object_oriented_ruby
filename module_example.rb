module Movable

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Vehicle 
  def initialize #initialize can go into a module, however - the module should only contain behaviors, and should not be able to create an instance, which initialize theoretically grants it the ability to do; up to personal team preference
    @speed = 0
    @direction = 'north'
  end
end 

class Car < Vehicle
 include Movable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  include Movable 

  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new

p car
p bike

car.accelerate
car.turn("west")

p car
