require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1 = Store.where(id:1)
@store1.employees.create(first_name: "Khurram", last_name: "ViraAFani", hourly_rate: 60)
@store1.employees.create(first_name: "Greg", last_name: "ViADArani", hourly_rate: 10)
@store1.employees.create(first_name: "Reit", last_name: "RRE", hourly_rate: 20)
