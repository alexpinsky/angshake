# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [
  { name: 'Watersports' },
  { name: 'Soccer' },
  { name: 'Chess' }
]

products = [
  {
    "category" => "Watersports", 
    "description" => "A boat for one person",
    "name" => "Kayak",
    "price" => 275
  },
  {
    "category" => "Watersports", 
    "description" => "Protective and fashionable",
    "name" => "Lifejacket",
    "price" => 48.95
  },
  {
    "category" => "Soccer",
    "description" => "FIFA-approved size and weight",
    "name" => "Soccer Ball",
    "price" => 19.5
  },
  {
    "category" => "Soccer",
    "description" => "Give your playing field a professional touch",
    "name" => "Corner Flags",
    "price" => 34.95
  },
  {
    "category" => "Soccer",
    "description" => "Flat-packed 35,000-seat stadium",
    "name" => "Stadium",
    "price" => 79500
  },
  {
    "category" => "Chess",
    "description" => "Improve your brain efficiency by 75%",
    "name" => "Thinking Cap",
    "price" => 16
  },
  {
    "category" => "Chess",
    "description" => "Secretly give your opponent a disadvantage",
    "name" => "Unsteady Chair",
    "price" => 29.95
  },
  {
    "category" => "Chess",
    "description" => "A fun game for the family",
    "name" => "Human Chess Board",
    "price" => 75
  },
  {
    "category" => "Chess",
    "description" => "Gold-plated, diamond-studded King",
    "name" => "Bling-Bling King",
    "price" => 1200
  }
]

Category.create(categories) unless Category.count > 0

products.each do |product|
  product_record = Product.new(product.except('category'))
  product_record.category = Category.where("name = ?", product['category']).first
  product_record.save
end