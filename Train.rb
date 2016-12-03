class Train
  attr_reader :number
  attr_accessor :speed
  attr_accessor :carriages
  attr_accessor :current_station_index
  attr_accessor :route

  def initialize(number, type, carriages)
    if !number.instance_of? Fixnum
      puts "Wrong type for number. Set to 0"
      @number = 0
    else
      @number = number
    end
    if !number.instance_of? String
      puts "Wrong type for type. Set to 'passenger'"
      @type = 'passenger'
    else
      @type = type
    end
    if !number.instance_of? Fixnum
      puts "Wrong type for carriages.Set to 0"
      @carriages = 0
    else
      @carriages = carriages
    end
    
    @speed = 0
    @route = nil
    @current_station_index = nil

  end

  def move(speed)
    self.speed = speed if ( (speed.instance_of? Float) || (speed.instance_of? Fixnum) ) && speed > 0 
  end

  def break
    self.speed = 0
  end

  def hitch_carriage
    if self.speed > 0
      puts "Impossible to hitch because of speed #{@speed}"
    else
      self.carriages += 1
    end
  end

  def unhitch_carriage
    if self.speed > 0
      puts "Impossible to hitch because of speed #{@speed}"
    elsif self.carriages == 0 
      puts "Impossible because of no any carriage hitched"
    else
      self.carriages -= 1
    end
  end

  def assign_route(route)
    if !route.instance_of? Route
      puts "Wrong argument type"
    elsif route.list.size == 0
      puts "Route is empty. Input other route"
    else
      self.route = route
      self.route.list[0].arrive(self)
    end
  end

  def move_by_route
    if self.current_station_index == (self.route.list.size - 1)
      puts "Already at the final station. Set a new route for '#{self.number}'"
    elsif self.route.list.size > 1
      current_station = self.route.list[self.current_station_index]
      current_station.depart(self)
      
      next_station = self.route.list[self.current_station_index+1]
      next_station.arrive(self)
    else
      puts "Couldn't move train '#{self.number}' because of empty route"
    end
  end

end