class Station
  attr_accessor :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def arrive(train)
    if @trains.include?(train)
      puts "Already at the station #{name}, wrong info"
    else
      @trains << train
    end
  end

  def depart(train)
    if @trains.include?(train)
      @trains.delete(train)
    else
      puts "Already departed from the station #{name}, wrong info"
    end
  end

  def list_trains
    @trains.each { |train| puts "#{train.number}" }
  end

  def list_trains_by_type
    @trains.each { |train| puts "#{train.number} type: #{train.type}" }
  end

end