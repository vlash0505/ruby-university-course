class Concert

  attr_accessor :genre, :weekday, :fee, :participants, :placement

  def initialize(genre, weekday, fee, participants, placement)
    @genre = genre
    @weekday = weekday
    @fee = fee
    @participants = participants
    @placement = placement
  end

end
