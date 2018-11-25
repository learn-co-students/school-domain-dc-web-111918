class School
  attr_accessor :school, :roster, :name, :grade

  def initialize(school, roster={})
    @school = school
    @roster = roster
  end

  def add_student(name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << name
  end

  def grade(student_grade)
    roster[student_grade]
  end

def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
  end
  sorted
end
end
