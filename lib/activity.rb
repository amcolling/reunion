require 'pry'
class Activity
  attr_reader :type,
  :participants,
  :cost

  def initialize(type)
    @type = ["hiking"]
    @participants = {}
    @cost = 0
  end

  def add_participant(participant, cost)
    @participants[participant] = cost
  end

  def add_cost(participant, cost)
    @cost += 20
    @type.each do |type|
      cost
    end
  end

  def split_cost(type, cost)
    @cost / 4
  end


end
