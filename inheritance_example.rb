class Bike
  attr_reader :speed

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def ring_bell
    puts "Ring ring!"
  end
end

class Car < Bike
  def honk_horn
    puts "Beeeeeeep!"
  end
end

car = Car.new
bike = Bike.new

bike.accelerate
p bike.speed

car.accelerate
p car.accelerate

bike.ring_bell
car.honk_horn