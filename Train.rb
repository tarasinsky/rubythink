class Train
  attr_reader :speed
  attr_reader :carriages
  attr_accessor :route

  def initialize(number, type, carriages)
    @name = number
    @type = type
    @carriages = carriages
    @speed = 0
    @route = nil
  end

  def move(speed)
    if speed > 0 
      @speed = speed
    end
  end

  def break
    @speed = 0
  end

  def hitch_carriage
    if @speed > 0
      puts "Impossible because of speed #{@speed}"
    else
      carriages += 1
    end
  end

  def unhitch_carriage
    if @speed > 0
      puts "Impossible because of speed #{@speed}"
    else
      carriages -= 1
    end
  end

  def move_by_route
  end

end