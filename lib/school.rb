require 'pry'

class School
  attr_accessor :school_name, :roster, :student, :student_grade

    def initialize(school_name)
      @school_name = school_name
      @roster = {}
    end

    def add_student(student,student_grade)
      self.roster[student_grade] ||= []
      self.roster[student_grade] << student
    end

    def grade(grade)
      self.roster[grade]
    end

    def sort
      student_sort = {}
      self.roster.each do |grade,student_arr|
        student_sort[grade] = student_arr.sort
      end
      return student_sort
    end
end


