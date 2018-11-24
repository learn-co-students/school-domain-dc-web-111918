# code here!
class School

attr_accessor :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student_name, student_grade)
  @student_name = student_name
  roster[student_grade] = [] if roster[student_grade] == nil
roster[student_grade] << student_name
end

def grade(student_grade)
  list = roster[student_grade]
end


def sort
new_roster = {}
  @roster.each do |grade, students|
    new_roster[grade] = students.sort
end
new_roster
end





end
