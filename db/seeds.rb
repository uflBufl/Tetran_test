# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create!(name: "One",
                 phone: "1111111111",
                 description: "First customer",
                 black: false)

Customer.create!(name: "Two",
                 phone: "222222222",
                 description: "Second customer",
                 black: true)

Customer.create!(name: "Three",
                 phone: "333333333",
                 description: "Clown",
                 black: false)

Customer.create!(name: "Four",
                 phone: "444444444",
                 description: "Bodyguard",
                 black: true)

Customer.create!(name: "Five",
                 phone: "555555555",
                 description: "Little Pony",
                 black: false)

Customer.create!(name: "Six",
                 phone: "666666666",
                 description: "Final customer",
                 black: true)
