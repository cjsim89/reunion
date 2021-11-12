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

end
