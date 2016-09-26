gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative '12days'

class TwelveDaysTest < Minitest::Test
  def test_day_one_gift
    l = "a partridge in a pear tree"
    g = Xmas.gifts(0).first
    # Xmas: class or a constant with an object
    # if Xmas is a class, then .gifts is a CLASS method
    # (if Xmas is a constant with an object, then .gift is a instance method) --> not common
    # gifts's parameter is a NUMBER
    # from .first method call, Guess .gifts(0) returns an ARRAY
    assert_equal(l, g)
    # l = g, so the return value of method gifts should be a ARRAY OF STRING
  end


  def test_day_two_gift
    l1 = "two turtle doves"
    l2 = "and a partridge in a pear tree"
    g1, g2 = Xmas.gifts(1)
    assert_equal l1, g1
    assert_equal l2, g2
    # comfired assumption in test case 1
    # new behavior: string in gift returned array should include all previous days
  end

  def test_day_five_yelling_gift
    yell = Xmas.gifts(4).first
    assert_equal "FIVE GOLDEN RINGS", yell
    # confirmed
  end

  def test_first_verse
    v1, v2 = Xmas.verse(0).split("\n")
    assert_equal "On the first day of Christmas my true love gave to me", v1
    assert_equal "a partridge in a pear tree", v2
    # there is a new method called .verse
    # guess: method verse(0) returns value is a STRING
    # verse(0) returns TWO lines, first line and second should match the texts above
  end

  def test_second_verse
    v1, v2, v3 = Xmas.verse(1).split("\n")

    assert_equal "On the second day of Christmas my true love gave to me", v1
    assert_equal "two turtle doves", v2
    assert_equal "and a partridge in a pear tree", v3
    # confirmed method verse
    # verse(1) returns THREE lines, matches above texts
  end

  def test_last_verse
    last_verse = <<-SONG
On the twelfth day of Christmas my true love gave to me
twelve drummers drumming
eleven pipers piping
ten lords-a-leaping
nine ladies dancing
eight maids-a-milking
seven swans-a-swimming
six geese-a-laying
FIVE GOLDEN RINGS
four calling birds
three french hens
two turtle doves
and a partridge in a pear tree
SONG
    assert_equal last_verse.strip, Xmas.verse(11)
    # day 12 should return above test
    # .strip removes all space
  end

  def test_sing_whole_song
    whole_song = File.read(File.dirname(__FILE__) + '/12days.txt')
    assert_equal whole_song.strip, Xmas.sing
    # whole_song is ONE STRING, is the content of 12days.txt
    # .sing method returns a STRING, its value = value of whole_song.strip
    # .sing behavior/whole_song.strip(open 12days.txt and look!): returns method verse(0..11) in sequence and have a space in-between
  end
end
