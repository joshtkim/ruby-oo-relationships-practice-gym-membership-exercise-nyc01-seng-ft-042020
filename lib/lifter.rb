class Lifter

  attr_accessor :name, :total
  @@all = []

  def initialize(name, total)
    @name = name
    @total = total
    Lifter << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|memberships| memberships.lifter == self}
  end

  def gyms
    memberships.map {|gym| gym.gym}
  end

  def average_lift
    Lifter.map {|total| total.total}.sum/ @@all.count
  end



  def total_cost
    memberships.map {|cost| cost.cost}
  end

  def new(gym, cost)
    binding.pry
    Membership.new(self, gym, cost) 
    binding.pry
  end

end
