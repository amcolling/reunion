require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_it_exists
  reunion.Reunion.new
  assert_instance_of Reunion, reunion
  end

  
end
# iteration 1: Creating Activities
#
# Add to the existing Activity class so that it supports the following functionality.
#
# An Activity has a name, such as 'hiking'
# An Activity has participants
# participants are represented with a hash and have a name and an amount they've paid for that activity
# You can add participants to an Activity
# You can evaluate the total cost of an activity
