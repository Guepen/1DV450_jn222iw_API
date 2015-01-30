# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
u1 = User.create(:email => "test@tester.com")
u2 = User.create(:email => "tester@test.com")

ApiKey.delete_all
a1 = ApiKey.create(:apikey => "s5adf5as4d6f4")
a2 = ApiKey.create(:apikey => "fa5sdf454sdff")

a1.user_id = u1
a2.user_id = u2

u1.save
u2.save
a1.save
a2.save