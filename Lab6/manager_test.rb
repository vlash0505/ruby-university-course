
require 'test/unit'
require_relative 'student'
require_relative 'university_types'
require_relative 'foreign_languages'
require_relative 'students_manager'

class ManagerTest < Test::Unit::TestCase

  def setup
    @students_manager = StudentsManager.new(
      Array[
        Student.new("Doe",      0, true, false,  UniversityTypes::TEACHING,    ForeignLanguages::FRENCH),
        Student.new("Brown",    0, true, false,  UniversityTypes::TEACHING,    ForeignLanguages::FRENCH),
        Student.new("Green",    0, true, false,  UniversityTypes::LAW,         ForeignLanguages::ENGLISH),
        Student.new("Black",    0, true, false,  UniversityTypes::ENGINEERING, ForeignLanguages::ENGLISH),
        Student.new("White",    0, true, false,  UniversityTypes::MEDICAL,     ForeignLanguages::ENGLISH),
        Student.new("Johnson",  0, true, false,  UniversityTypes::ENGINEERING, ForeignLanguages::GERMAN),
        Student.new("Thompson", 0, false, false, UniversityTypes::ENGINEERING, ForeignLanguages::GERMAN),
        Student.new("Jackson",  1, false, true,  UniversityTypes::ENGINEERING, ForeignLanguages::GERMAN),
        Student.new("Goodman",  4, false, true,  UniversityTypes::TEACHING,    ForeignLanguages::GERMAN),
        Student.new("Peterson", 3, false, true,  UniversityTypes::ENGINEERING, ForeignLanguages::CHINESE)
      ]
    )
  end

  def test_count_dorm
    assert_equal(@students_manager.count_dorm, 6)
  end

  def test_former_teachers
    assert_equal(@students_manager.former_teachers, %w[Goodman Peterson])
  end

  def test_teaching_graduates
    assert_equal(@students_manager.teaching_graduates, %w[Doe Brown Goodman])
  end

  def test_language_groups
    assert_equal(@students_manager.group_by_language.values_at(ForeignLanguages::FRENCH).at(0),  %w[Doe Brown])
    assert_equal(@students_manager.group_by_language.values_at(ForeignLanguages::ENGLISH).at(0), %w[Green Black White])
    assert_equal(@students_manager.group_by_language.values_at(ForeignLanguages::GERMAN).at(0),  %w[Johnson Thompson Jackson Goodman])
    assert_equal(@students_manager.group_by_language.values_at(ForeignLanguages::CHINESE).at(0), %w[Peterson])
  end
end
