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
    Membership.all.select {|x| x.gym == self}
  end

  def lifters
    memberships.map {|x| x.lifter}
  end

  def list_mem
    memberships.map {|x| x.lifter.name}
  end

  def list_total
    memberships.map {|x| x.lifter.total}.sum
  end



end

