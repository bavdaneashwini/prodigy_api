# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# db/seeds.rb

# Create categories
creativity = Category.create!(name: "Creativity")
gratitude = Category.create!(name: "Gratitude")

# Create activities
activity1 = Activity.create!(name: "Stimulus Explosion", frequency: "2x/Week", duration_seconds: 60, category: creativity)
activity2 = Activity.create!(name: "Gratitude Wall", frequency: "1x/Day", duration_seconds: 60, category: gratitude)
activity3 = Activity.create!(name: "Gratitude Call", frequency: "1x/Week", duration_seconds: 60, category: gratitude)

# Create day plans for day 14
DayPlan.create!(day_number: 14, activity: activity1)
DayPlan.create!(day_number: 14, activity: activity2)
DayPlan.create!(day_number: 14, activity: activity3)

# Create a user
User.create!(name: "Ashwini Bavdane", email: "ashwinibavdane12@gmail.com")
