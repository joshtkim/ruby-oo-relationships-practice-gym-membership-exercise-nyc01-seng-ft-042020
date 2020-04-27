# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("24 hr fitness")
gym2 = Gym.new("Retro")
gym3 = Gym.new("Planet Fitness")
gym4 = Gym.new("Equinox")
lifter1 = Lifter.new("Josh", 150)
lifter2 = Lifter.new("Jessica", 175)
lifter3 = Lifter.new("Sonia", 200)
lifter4 = Lifter.new("Mom", 400)
lifter5 = Lifter.new("Dad", 350)
mem1 = Membership.new(lifter1, gym1, 150)
mem2 = Membership.new(lifter2, gym2, 150)
mem3 = Membership.new(lifter3, gym3, 150)
mem4 = Membership.new(lifter4, gym4, 150)
mem5 = Membership.new(lifter5, gym2, 150)
mem6 = Membership.new(lifter4, gym3, 150)
mem7 = Membership.new(lifter2, gym1, 150)

binding.pry

puts "Gains!"
