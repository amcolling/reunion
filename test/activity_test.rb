require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_it_exists
  activity = Activity.new("hiking")
  assert_instance_of Activity, activity
  end

  def test_activity_type
    activity = Activity.new("hiking")
    assert_equal "hiking", activity.type
  end

  def test_add_participants
    activity = Activity.new("hiking")
    activity.add_participant("Angi", 5)
    activity.add_participant("Claire", 10)
    activity.add_participant("Richard", 6)
    activity.add_participant("Seth", 10)
    expected = { "Angi" => 5, "Claire" => 10, "Richard" => 6, "Seth" => 10}
    assert_equal expected, activity.participants
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
