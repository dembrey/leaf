# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


skills_array = ["Accounting", "Admin & Clerical", "Banking & Finance", "Customer Service", "Engineering", "Health Care", "Hospitality", "Information Technology", "Manufacturing", "Sales & Marketing", "Transportation"]

skills_array.each do |skill|
  Skill.create!(name: skill)
end

locations_array = ["Downtown Bloomington", "North Bloomington", "South Bloomington", "East Bloomington", "West Bloomington", "Greater Monroe County"]

locations_array.each do |location|
  Location.create!(name: location)
end

5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email,
    phone: Faker::PhoneNumber.phone_number,
    bio: Faker::StarWars.quote,
    password: "cupcakes",
    location: Location.all.sample,
    username: Faker::Cat.unique.name,
    skills: Skill.all.sample(3)
  )
end

5.times do
  Employer.create!(
    company_name: Faker::LordOfTheRings.location,
    contact_name: Faker::LordOfTheRings.character,
    contact_phone: Faker::PhoneNumber.phone_number,
    about: Faker::Company.catch_phrase,
    password: "cupcakes"
  )
  3.times do
    Job.create!(
      title: Faker::Company.profession,
      description: Faker::Company.bs,
      transportation: false,
      active: true,
      location: Location.all.sample,
      skills: Skill.all.sample(3)
    )
  end
end
