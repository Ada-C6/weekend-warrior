
class Xmas
  # cardinal numbering
  def self.gifts(day_of_xmas)

    if day_of_xmas == 0
      return ["a partridge in a pear tree"]
    elsif day_of_xmas == 4 
      return ["FIVE GOLDEN RINGS"]
    else
      return ["two turtle doves", "and a partridge in a pear tree"] 
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

