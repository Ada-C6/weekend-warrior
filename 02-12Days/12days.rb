class Xmas
    # number of "@" represents "self." or its current level. if puts a variable into a instance method(e.g. initialize) means downgrading it by one level.
    @gifts =  [
      "and a partridge in a pear tree",
      "two turtle doves",
      "three french hens",
      "four calling birds",
      "FIVE GOLDEN RINGS",
      "six geese-a-laying",
      "seven swans-a-swimming",
      "eight maids-a-milking",
      "nine ladies dancing",
      "ten lords-a-leaping",
      "eleven pipers piping",
      "twelve drummers drumming",
    ]
    @first_gift = "a partridge in a pear tree"
    DAY_NAMES = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]

  def self.gifts(day_number) #.reserve can also be used here
    gifts_of_day = []
    if day_number == 0
      gifts_of_day << @first_gift
    else
      (day_number + 1).times do |current_day|
        gifts_of_day << @gifts[day_number - current_day]
      end
    end
    return gifts_of_day
  end

  def self.verse(day_number)
    gifts_text = ""
    gifts(day_number).each do |gift|
      gifts_text += ("\n" + gift)
    end
    return "On the #{DAY_NAMES[day_number]} day of Christmas my true love gave to me" + gifts_text
  end

  def self.sing
    full_text = ""
    @gifts.length.times do |day_number|
       full_text += (verse(day_number) + "\n\n")
    end
    return full_text.strip
  end
end
