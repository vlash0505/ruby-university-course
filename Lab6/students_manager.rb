
require_relative 'student'
require_relative 'university_types'
require_relative 'foreign_languages'

class StudentsManager

  def initialize(students)
    @students = students
  end

  def count_dorm
    count_students = 0
    @students.each do |i|
      if i.is_needs_dormitory
        count_students += 1
      end
    end
    count_students
  end

  def former_teachers
    students_teachers = []
    @students.each do |i|
      if i.is_was_a_teacher && i.experience >= 2
        students_teachers.push(i.second_name)
      end
    end
    students_teachers
  end

  def teaching_graduates
    students = []
    @students.each do |i|
      if i.university_type == UniversityTypes::TEACHING
        students.push(i.second_name)
      end
    end
    students
  end

  def group_by_language
    students_group = Hash.new { |hash, key| hash[key] = [] }

    @students.each do |entry|
      students_group[entry.foreign_language] << entry.second_name
    end
    students_group
  end

end
