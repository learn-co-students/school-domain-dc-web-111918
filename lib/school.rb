# code here!
require "pry"

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(grade_year)
    classRoster = roster[grade_year]
  end

  def sort
    roster.each_value {|value| value.sort!}
  end

  def add_student(student, grade)
    @student = student
    roster[grade] = [] if roster[grade] == nil
    roster[grade] << student
  end

end
