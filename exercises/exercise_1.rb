require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

create_store=Store.new
create_store.name = "Burnaby"
create_store.annual_revenue = 300000
create_store.mens_apparel = true
create_store.womens_apparel = true
create_store.save

create_store=Store.new
create_store.name = "Richmond"
create_store.annual_revenue = 1260000
create_store.mens_apparel = false
create_store.womens_apparel = true
create_store.save

create_store=Store.new
create_store.name = "Gastown"
create_store.annual_revenue = 190000
create_store.mens_apparel = true
create_store.womens_apparel = false
create_store.save

users_output=Store
puts users_output.count


# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:
#   * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
#   * Richmond (annual_revenue of 1260000 carries women's apparel only)
#   * Gastown (annual_revenue of 190000 carries men's apparel only)
# 2. Output (`puts`) the number of the stores using ActiveRecord's `count` method,
  # to ensure that there are three stores in the database.