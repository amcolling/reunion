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
    assert_equal ["hiking"], activity.type
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

  def test_activity_cost
    activity = Activity.new("hiking")
    activity.add_cost("hiking", 20)
    assert_equal 20, activity.cost
  end

  def test_split_cost
    activity = Activity.new("hiking")
    assert_equal 5, activity.split_cost
  end
end

# Iteration 2: Activity Calculations
#
# Add to the Activity class so that it supports the following functionality. Note, it is assumed that the cost of each activity is split evenly between all participants.
#
# You can split the cost of an activity
# You can evaluate out how much each person is owed/owes
# If a participant paid less than their fair share they owe a positive amount.
# If a participant paid more than their fair share they owe a negative amount (meaning they are owed money).
