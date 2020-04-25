class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def average_total
     @@all.map do |lift_total|
      lift_total.lift_total
     end.sum / @@all.count
  end

  def total_cost
    memberships.map do |cost|
      cost.cost
    end.sum
  end

  def new_mem(gym, cost)
    Membership.new(cost, gym, self)
  end




end
