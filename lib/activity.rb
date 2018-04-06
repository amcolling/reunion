require 'pry'
class Activity
  attr_reader :type,
              :participants



  def initialize(type)
    @type = type
    @participants = {}
  end

  def add_participant(participant, cost)
    @participants[participant] = cost
  end








end
