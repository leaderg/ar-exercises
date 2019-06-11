require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
avg_revenue = Store.average(:annual_revenue)
number_above_1m = Store.where("annual_revenue between 1000000 and 999999999 ").count
puts "Total Revenue of all Stores: #{total_revenue}"
puts "Average Revenue of all Stores: #{avg_revenue}"
puts "Number of stores above 1M Revenue: #{number_above_1m}"