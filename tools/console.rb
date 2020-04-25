# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


gym1 = Gym.new("24 Hour Fitness")
gym2 = Gym.new("Retro Fitness")
lifter1 = Lifter.new("Josh", 150)
lifter2 = Lifter.new("Jessica", 50)
lifter3 = Lifter.new("Sonia", 275)
membership1 = Membership.new(100, gym1, lifter1)
membership2 = Membership.new(100, gym2, lifter2)
membership3 = Membership.new(100, gym1, lifter3)




binding.pry

puts "Gains!"
