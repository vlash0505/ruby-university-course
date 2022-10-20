class Airline

  attr_accessor :destination, :flight_number, :plane_type, :departure_time, :operating_day

  def initialize(destination, flight_number, plane_type, departure_time, operating_day)
    @destination = destination
    @flight_number = flight_number
    @plane_type = plane_type
    @departure_time = departure_time
    @operating_day = operating_day
  end

end
