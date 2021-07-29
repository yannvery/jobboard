# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times {Company.create(name: Faker::Company.name, description: Faker::Lorem.paragraphs(number: rand(1..2)).join("\n"))}

1500.times do
  skills = (1..3).map{ "- #{Faker::Job.key_skill}\n"}.join

  Offer.create(
    title: Faker::Job.title,
    description: "Search #{Faker::Job.seniority} #{Faker::Job.position}\nSkills: \n#{skills} \n#{Faker::Job.employment_type} position.",
    company_id: rand(1..10)
  )
end
