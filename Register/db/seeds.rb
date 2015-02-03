# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
u1 = User.create(:email => "test@tester.com", :password => "test", :password_confirmation => "test")
u2 = User.create(:email => "tester@test.com", :password => "test", :password_confirmation => "test")

ApiKey.delete_all
a1 = ApiKey.create()
a2 = ApiKey.create()

u1.api_key = a1
u2.api_key = a2