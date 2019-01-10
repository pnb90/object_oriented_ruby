class Vehicle
  attr_reader :speed, :direction

  def initialize #attributes - characteristics of a object; can be rewritten
    @speed = 0
    @direction = 'north'
  end

  def brake #behavior - something the object does, usually created through methods
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Bike < Vehicle
  attr_reader :gear, :weight, :type

  def initialize(input_options)
    super()
    @gear = input_options[:gear]
    @weight = input_options[:weight]
    @type = input_options[:type]
  end

  def ring_bell
    puts "Ring ring!"
  end

end 

class Car < Vehicle
  attr_reader :fuel, :make, :model #to easily make an attr reader, R + tab
  attr_writer :fuel, :make, :model #to easily make an attr writer, W + tab
  
  def initialize(input_options)
    super()
    @make = input_options[:make]
    @model = input_options[:model]
    @fuel = input_options[:fuel]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

car = Car.new(
              make: "Toyota", 
              model: "Prius", 
              fuel: 20,
              )

bike = Bike.new(make: "fixie", 
                weight: "15 pound",
                type: "roadbike",
                gear: "1 gear"
                )

p car
p bike

car.accelerate
bike.accelerate

p car
p bike


