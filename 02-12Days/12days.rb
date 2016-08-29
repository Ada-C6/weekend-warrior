
class Xmas
  # cardinal numbering
  def self.gifts(day_of_xmas)

    case day_of_xmas 
    when  0
      return ["a partridge in a pear tree"]
    when 1
      return ["two turtle doves", "and a partridge in a pear tree"]
    when 2
      return ["three french hends"]
    when 3
      return ["four calling birds"]
    when 4
      return ["FIVE GOLDEN RINGS"]
    when 5
      return ["six geese-a-laying"]
    when 6
      return ["seven swans-a-swimming"]
    when 7
      return ["eight maids-a-milking"]
    when 8
      return ["nine ladies dancing"]
    when 9
      return ["ten lords-a-leaping"]
    when 10
      return ["eleven pipers piping"]
    when 11
      return ["twelve drummers drumming"]
    end
  end

  def self.verse(day_of_xmas)
    if day_of_xmas == 0
      return "On the first day of Christmas my true love gave to me\na partridge in a pear tree"
    else
      return "On the second day of Christmas my true love gave to me\ntwo turtle doves\nand a partridge in a pear tree"
    end  
  end

end

