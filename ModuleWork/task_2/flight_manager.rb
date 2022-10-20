
require_relative 'airline'
require_relative 'cities'
require_relative 'plane_types'
require_relative 'week_days'

class FlightManager

  def initialize(airlines)
    @airlines = airlines
  end

  def get_by_destination(destination)
    result = []
    @airlines.each do |i|
      if i.destination == destination
        result.push(i.flight_number)
      end
    end
    result
  end

  def count_standard_by_day(day)
    count_airlines = 0
    @airlines.each do |i|
      if i.operating_day == day
        count_airlines += 1
      end
    end
    count_airlines
  end

  def group_by_plane_type
    flights_group = Hash.new { |hash, key| hash[key] = [] }

    @airlines.each do |entry|
      flights_group[entry.plane_type] << entry.flight_number
    end
    flights_group
  end
end
