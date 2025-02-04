class Engine
  def start
    puts 'Engine is starting'
  end

  def stop
    puts 'Engine is stopping'
  end
end

class Car
  def initialize(model)
    @model = model
    @engine = Engine.new
  end

  def get_model_name
    puts @model
  end

  def self.calculate_mileage(miles, gallons)
    miles / gallons
  end

  def start
    @engine.start
  end

  def to_s
    "This car is a #{@model}"
  end
end
