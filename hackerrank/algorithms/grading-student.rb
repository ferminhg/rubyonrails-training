#!/bin/ruby

require 'json'
require 'stringio'

def grading_policy grade
  return grade if grade < 38
  (grade % 5) >= 3  ? grade + (5 - (grade % 5)) : grade
end

def gradingStudents grades 
  grades.map{ |grade| grading_policy grade}
end


grades = [73, 67, 38, 33] 
result = gradingStudents grades

p result
