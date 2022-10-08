
class Student

  attr_accessor :second_name, :experience, :is_needs_dormitory, :is_was_a_teacher, :university_type, :foreign_language

  def initialize(second_name, experience, is_needs_dormitory, is_was_a_teacher, university_type, foreign_language)
    @second_name = second_name
    @experience = experience
    @is_needs_dormitory = is_needs_dormitory
    @is_was_a_teacher = is_was_a_teacher
    @university_type = university_type
    @foreign_language = foreign_language
  end

end
