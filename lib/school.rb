require 'pry'
class School

  attr_accessor :name, :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @grade = grade
    @roster[grade] ||= []
    @roster[grade] << name

  end

  #getter method
  # A method, grade, should take in an argument
  # of a grade and return all of the students
  # in that grade:
  def grade(grade)
    @roster[grade]
    # binding.pry
  end
  #since the arg value is a hash based upon
  #the tests.. using hash as var

  # You should be able to get a sorted list of all the
  # students where the strings in the student arrays are
  # sorted alphabetically.

  def sort
    new_hash = {}
    self.roster.each {|k,v| new_hash[k]= v.sort}
    # binding.pry
    return new_hash
  end

  # def sort(roster)
  #   # roster.each do |k,v|
  #     binding.pry
  #      # v.sort
  #    # end
  #
  # end


end
