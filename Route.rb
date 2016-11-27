class Route

  route_list = []
  
  def initialize(start_station, finish_station)
    route_list << start_station
    route_list << finish_station
  end

  def add_station(station, order)
    if order > 0 && order <= route_list.size
      route_list.insert(order, station)
    else
      puts "wrong order for station #{station}"
    end
  end

  def delete_station(station)
    if route_list.include?(station)
      route_list.delete(station)
    else
      puts "No such station #{station} in route"
    end
  end

  def list
    route_list.each {|station| puts "#{station.name}"}
  end

end