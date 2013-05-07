# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' },
  { :name => 'VIP' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'User1', :email => 'user@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
user.add_role :admin
puts 'New user created: ' << user.name
user2 = User.create! :name => 'User2', :email => 'user2@example.com', :password => 'pleaseme', :password_confirmation => 'pleaseme'
puts 'New user created: ' << user2.name
user2.add_role :admin