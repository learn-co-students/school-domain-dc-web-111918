class School
  attr_accessor :school_name, :roster, :student_name, :student_grade

  def initialize(school_name, roster={})
    @school_name = school_name
    @roster = roster
  end

  def add_student(student_name, student_grade)
    self.roster[student_grade] ||= []
    self.roster[student_grade] << student_name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    sorted_hash = {}
    self.roster.each do |grade, student_array|
      sorted_hash[grade] = student_array.sort
    end
    sorted_hash
  end

end

roster = {7=>["Blake Johnson", "Jack Bauer"], 9=>["Bart Simpson", "Homer Simpson"], 10=>["Avi Flombaum", "Jeff Baird"]}
school = School.new("Gymn12", roster)
puts school.roster.sort.to_h
