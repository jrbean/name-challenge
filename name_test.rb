require 'minitest/autorun'

class Person
  attr_accessor :name

  def initialize given_name
    self.name = given_name
  end

  def angry_name
    name.upcase + "!!!"
  end

end

class PersonTest < Minitest::Test
  def test_people_know_their_name
    tom = Person.new "Tom Crawford"
    assert_equal "Tom Crawford", tom.name
  end

  def test_people_can_be_angry
    su = Person.new "Su Kim"
    assert_equal "SU KIM!!!", su.angry_name
  end
end
