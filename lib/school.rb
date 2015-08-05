# Write code here
require 'pry'
class School

attr_accessor :name, :roster
  def initialize(name)
    @name = name 
    @roster = {}
  end

  def add_student(name, grade)
    # only if the key value doesnt exist yet
    # Then we can shovel our names into the array
    @roster[grade] ||= [] 
    @roster[grade] << name
    # {grade => [name]}
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    # append the datatype to the placeholder
    @roster.each_value do |students_array| 
      # with ! to change the original array
      students_array.sort!
    end
  end 
end




