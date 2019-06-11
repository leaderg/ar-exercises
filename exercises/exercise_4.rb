require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

create_store=Store.new
create_store.name = "Surrey"
create_store.annual_revenue = 224000
create_store.mens_apparel = false
create_store.womens_apparel = true
create_store.save

create_store=Store.new
create_store.name = "Whistler"
create_store.annual_revenue = 1900000
create_store.mens_apparel = true
create_store.womens_apparel = false
create_store.save

create_store=Store.new
create_store.name = "Yaletown"
create_store.annual_revenue = 430000
create_store.mens_apparel = true
create_store.womens_apparel = true
create_store.save

@mens_stores = Store.where(womens_apparel: false)
pp @mens_stores


@low_revenue_womens_stores = Store.where(womens_apparel: true)
@low_revenue_womens_stores =  @low_revenue_womens_stores.where("annual_revenue between 0 and 999999 ")
pp @low_revenue_womens_stores

