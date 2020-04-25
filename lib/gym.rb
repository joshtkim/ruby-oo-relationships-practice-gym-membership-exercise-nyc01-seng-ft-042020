class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |memberships|
      memberships.gym == self
    end
  end

  def lifter
    memberships.map do |lifter|
      lifter.lifter
    end
  end


def list
  lifter.map do |name|
    name.name
  end
end

def total
  lifter.map do |lift|
    lift.lift_total
  end.sum
end

  


end
