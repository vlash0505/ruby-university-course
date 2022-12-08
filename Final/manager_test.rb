require 'test/unit'
require_relative 'concert'
require_relative 'genres'
require_relative 'week_days'
require_relative 'placements'
require_relative 'concerts_manager'

class ManagerTest < Test::Unit::TestCase

  def setup
    @concerts_manager = ConcertsManager.new(
      Array[
        Concert.new(Genres::SCIENCE,    WeekDays::MONDAY,    250, Array.[]("a", "b"),  Placements::KYIV),
        Concert.new(Genres::SCIENCE,    WeekDays::MONDAY,    250, Array.[]("a", "b"),  Placements::KYIV),
        Concert.new(Genres::SCIENCE,    WeekDays::WEDNESDAY, 250, Array.[]("c", "b"),  Placements::BERLIN),
        Concert.new(Genres::ROMANCE,    WeekDays::WEDNESDAY, 100, Array.[]("c", "b"),  Placements::LONDON),
        Concert.new(Genres::ROMANCE,    WeekDays::WEDNESDAY, 100, Array.[]("c", "b"),  Placements::LONDON),
        Concert.new(Genres::MUSIC,      WeekDays::WEDNESDAY,  50, Array.[]("c", "b"),  Placements::STOCKHOLM),
        Concert.new(Genres::MUSIC,      WeekDays::WEDNESDAY,  50, Array.[]("c", "b"),  Placements::STOCKHOLM),
        Concert.new(Genres::MUSIC,      WeekDays::SUNDAY,    150, Array.[]("a", "d"),  Placements::LONDON),
        Concert.new(Genres::ADVENTURE,  WeekDays::SUNDAY,    150, Array.[]("a", "b"),  Placements::BERLIN),
        Concert.new(Genres::ADVENTURE,  WeekDays::SUNDAY,    150, Array.[]("a", "b"),  Placements::BERLIN)
      ]
    )
  end

  def test_get_by_placement
    assert_equal(@concerts_manager.get_by_placement(Placements::KYIV).size,       2)
    assert_equal(@concerts_manager.get_by_placement(Placements::BERLIN).size,     3)
    assert_equal(@concerts_manager.get_by_placement(Placements::LONDON).size,     3)
    assert_equal(@concerts_manager.get_by_placement(Placements::STOCKHOLM).size,  2)
  end

  def test_get_by_genre
    assert_equal(@concerts_manager.get_by_genre(Genres::SCIENCE).size,     3)
    assert_equal(@concerts_manager.get_by_genre(Genres::ROMANCE).size,     2)
    assert_equal(@concerts_manager.get_by_genre(Genres::MUSIC).size,       3)
    assert_equal(@concerts_manager.get_by_genre(Genres::ADVENTURE).size,   2)
  end

  def test_get_by_weekday
    assert_equal(@concerts_manager.get_by_weekday(WeekDays::MONDAY).size,   2)
    assert_equal(@concerts_manager.get_by_weekday(WeekDays::TUESDAY).size,  0)
    assert_equal(@concerts_manager.get_by_weekday(WeekDays::WEDNESDAY).size,5)
    assert_equal(@concerts_manager.get_by_weekday(WeekDays::THURSDAY).size, 0)
    assert_equal(@concerts_manager.get_by_weekday(WeekDays::FRIDAY).size,   0)
    assert_equal(@concerts_manager.get_by_weekday(WeekDays::SATURDAY).size, 0)
    assert_equal(@concerts_manager.get_by_weekday(WeekDays::SUNDAY).size,   3)
  end

  def test_get_sorted_by_fee
    result = @concerts_manager.get_sorted_by_fee
    assert_equal(result[0].fee,   50)
    assert_equal(result[1].fee,   50)
    assert_equal(result[2].fee,   100)
    assert_equal(result[3].fee,   100)
    assert_equal(result[4].fee,   150)
    assert_equal(result[5].fee,   150)
    assert_equal(result[6].fee,   150)
    assert_equal(result[7].fee,   250)
    assert_equal(result[8].fee,   250)
    assert_equal(result[9].fee,   250)
  end

  def test_get_participants
    assert_equal(@concerts_manager.get_all_participants.size,   4)
  end

end
