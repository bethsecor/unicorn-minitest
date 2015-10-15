gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './unicorn'

class UnicornTest < Minitest::Test
  def test_unicorn_has_a_name
    last_unicorn = Unicorn.new("Lady Amalthea")
    assert_equal "Lady Amalthea", last_unicorn.name
  end

  def test_it_can_be_named_something_else
    unicorn = Unicorn.new("Mariela")
    assert_equal "Mariela", unicorn.name
  end

  def test_unicorn_is_white_by_default
    unicorn = Unicorn.new("Margaret")
    assert_equal "white", unicorn.color
  end

  def test_unicorn_knows_if_it_is_white
    unicorn = Unicorn.new("Elisabeth")
    assert unicorn.white?, "Elisabeth should be white, but isn't."
  end

  def test_unicorn_is_not_white
    unicorn = Unicorn.new("Ingrid", "seagreen")
    assert_equal "seagreen", unicorn.color
  end

  def test_unicorn_knows_if_it_is_not_white
    unicorn = Unicorn.new("Roxanne", "periwinkle")
    refute unicorn.white?, "I guess Roxanne thinks she's white, when really she is periwinkle."
  end

  def test_unicorn_says_sparkly_stuff
    unicorn = Unicorn.new("Sara")
    assert_equal "**;* Wonderful! **;*", unicorn.say("Wonderful!")
  end

  def test_unicorn_says_different_sparkly_stuff
    unicorn = Unicorn.new("Francis")
    assert_equal "**;* I don't like you very much. **;*", unicorn.say("I don't like you very much.")
  end
end
