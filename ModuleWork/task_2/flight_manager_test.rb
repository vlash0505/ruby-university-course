
require 'test/unit'
require_relative 'airline'
require_relative 'flight_manager'
require_relative 'plane_types'
require_relative 'week_days'
require_relative 'cities'

class FlightManagerTest < Test::Unit::TestCase

  def setup
    @flight_manager = FlightManager.new(
      Array[
        Airline.new(Cities::KYIV,      1,  PlaneTypes::STANDARD, Time.new(2022, 2,  1),   WeekDays::MONDAY),
        Airline.new(Cities::KYIV,      2,  PlaneTypes::STANDARD, Time.new(2022, 2,  4),   WeekDays::MONDAY),
        Airline.new(Cities::STOCKHOLM, 3,  PlaneTypes::PRIVATE,  Time.new(2022, 2,  6),   WeekDays::WEDNESDAY),
        Airline.new(Cities::STOCKHOLM, 4,  PlaneTypes::URGENT,   Time.new(2022, 2,  6),   WeekDays::WEDNESDAY),
        Airline.new(Cities::STOCKHOLM, 5,  PlaneTypes::STANDARD, Time.new(2022, 4,  7),   WeekDays::WEDNESDAY),
        Airline.new(Cities::HELSINKI,  6,  PlaneTypes::STANDARD, Time.new(2022, 4,  14),  WeekDays::THURSDAY),
        Airline.new(Cities::TALLIN,    7,  PlaneTypes::STANDARD, Time.new(2022, 4,  14),  WeekDays::THURSDAY),
        Airline.new(Cities::TALLIN,    8,  PlaneTypes::STANDARD, Time.new(2022, 11, 21),  WeekDays::FRIDAY),
        Airline.new(Cities::WARSAW,    9,  PlaneTypes::STANDARD, Time.new(2022, 11, 23),  WeekDays::FRIDAY),
        Airline.new(Cities::BERLIN,    10, PlaneTypes::URGENT,   Time.new(2022, 11, 25),  WeekDays::FRIDAY)
      ]
    )
  end

  def test_get_ids_by_destination
    assert_equal(@flight_manager.get_by_destination(Cities::KYIV),     [1, 2])
    assert_equal(@flight_manager.get_by_destination(Cities::STOCKHOLM),[3, 4, 5])
    assert_equal(@flight_manager.get_by_destination(Cities::HELSINKI), [6])
    assert_equal(@flight_manager.get_by_destination(Cities::TALLIN),   [7, 8])
    assert_equal(@flight_manager.get_by_destination(Cities::WARSAW),   [9])
    assert_equal(@flight_manager.get_by_destination(Cities::BERLIN),   [10])
  end

  def test_count_standard_by_day
    assert_equal(@flight_manager.count_standard_by_day( WeekDays::MONDAY),   2)
    assert_equal(@flight_manager.count_standard_by_day( WeekDays::TUESDAY),  0)
    assert_equal(@flight_manager.count_standard_by_day( WeekDays::WEDNESDAY),3)
    assert_equal(@flight_manager.count_standard_by_day( WeekDays::THURSDAY), 2)
    assert_equal(@flight_manager.count_standard_by_day( WeekDays::FRIDAY),   3)
    assert_equal(@flight_manager.count_standard_by_day( WeekDays::SATURDAY), 0)
    assert_equal(@flight_manager.count_standard_by_day( WeekDays::SUNDAY),   0)
  end

  def test_group_by_destination
    assert_equal(@flight_manager.group_by_plane_type.values_at(PlaneTypes::STANDARD).at(0), [1, 2, 5, 6, 7, 8, 9])
    assert_equal(@flight_manager.group_by_plane_type.values_at(PlaneTypes::PRIVATE).at(0),  [3])
    assert_equal(@flight_manager.group_by_plane_type.values_at(PlaneTypes::URGENT).at(0),   [4, 10])
  end
end