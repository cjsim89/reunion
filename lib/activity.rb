class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def add_participant(name, amount_paid)
    @participants[name] = amount_paid
  end

  def total_cost
    # cost = 0
    # @participants.values.each do |p|
    #   cost =+ p
    # end
    @participants.values.sum #omg ruby <3
  end

  def split
    self.total_cost / @participants.length
  end

  def owed
    owed_values = {}
    @participants.each do |name, val|
      owed_values[name] = self.split - val
    end
    owed_values
  end

end
