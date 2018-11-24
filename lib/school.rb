require 'pry'

class School
  def initialize(school_name)
    @school = school_name
    @schools_roster = {}
  end

  def add_student(student, grade)
    if @schools_roster[grade]
      @schools_roster[grade] << student
    else
      @schools_roster[grade] = []
      @schools_roster[grade] << student
    end
  end

  def grade(grade)
    @schools_roster[grade]
  end

  def sort
    ordered_hash = {}
    @schools_roster.each do |grade, students_array|
      students_array.sort!
      ordered_hash[grade] = students_array
    end
    ordered_hash
  end

  def roster
    @schools_roster
  end
end

# binding.pry
