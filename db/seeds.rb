# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

5.times do
  User.create(
    email: Faker::Internet.safe_email,
    password: 'helloworld',
    confirmed_at: Time.now
  )
end

User.create(
  email: 'test@getitdone.com',
  password: 'helloworld',
  role: :member,
  confirmed_at: Time.now
)

User.create(
  email: 'admin@getitdone.com',
  password: 'helloworld',
  role: :admin,
  confirmed_at: Time.now
)

6.times do
  Item.create(
    name: Faker::Lorem.words(2).join(' '),
    user_id: User.find_by(email: 'test@getitdone.com').id
  )
end

puts Item.all.count.to_s + " items created"