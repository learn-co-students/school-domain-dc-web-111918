class School
  attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = roster={}
  end

  def add_student(student_name, student_grade)
    self.roster[student_grade] ||= []
    self.roster[student_grade] << student_name
  end

  def grade(student_grade)
    return self.roster[student_grade]
  end

  def sort
    sorted = {}
    self.roster.each do |grade, students|
      sorted [grade] =   students.sort
    end
    sorted
  end

end
