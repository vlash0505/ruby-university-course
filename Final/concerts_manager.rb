require_relative 'concert'
require_relative 'genres'
require_relative 'placements'

class ConcertsManager

  def initialize(concerts)
    @concerts = concerts
  end

  def get_by_genre(genre)
    result = []
    @concerts.each do |i|
      result.push(i) if i.genre == genre
    end
    result
  end

  def get_sorted_by_fee
    @concerts.sort_by(&:fee)
  end

  def get_by_placement(placement)
    result = []
    @concerts.each do |i|
      result.push(i) if i.placement == placement
    end
    result
  end

  def get_by_weekday(weekday)
    result = []
    @concerts.each do |i|
      result.push(i) if i.weekday == weekday
    end
    result
  end

  def get_all_participants
    result = []
    @concerts.each do |i|
      i.participants.each { |p| result.push(p) }
    end
    result.uniq!
  end

end