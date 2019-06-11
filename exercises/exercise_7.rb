require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  validates :name, :lastname, :hourly_rate, :store, presence: true
  validates :hourly_rate, :inclusion => {:in => [40,200]}
end
