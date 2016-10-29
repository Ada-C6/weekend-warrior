class Hamming
  def self.compute(s1, s2) # s1, s2 is string
    if s1.length != s2.length
      raise ArgumentError
    end
    diff_number = 0
    s1.chars.each_with_index {|char, index| diff_number += 1 if char !=  s2[index]}
    return diff_number
  end
end

# puts Hamming.compute("AB","AC")
