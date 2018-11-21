class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student (student,grade)
    array = []
    self.roster[grade] ||= array
    self.roster[grade] << student

  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted={}
    self.roster.sort.to_h
    self.roster.each do |grade, students|
      sorted[grade] = students.sort
    end

sorted

  end



end
