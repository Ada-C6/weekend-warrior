class Hamming

  def self.compute(strand_1, strand_2)
    # preconditions
    if strand_1 + strand_2 == ""
      
      return 0 

    end

    if strand_1.size > strand_2.size

      raise ArgumentError.new("Strand_1 is longer!")

    elsif strand_2.size > strand_1.size

      raise ArgumentError.new("Strand_2 is longer!")

    end

    # strand_1 & strand_2 are of equal length and are not empty

    if strand_1 == strand_2

      return 0

    end

    hamming_count = 0

    # this is where the exciting stuff happens

    strand_1.size.times do |count|

      if strand_1[count] == strand_2[count]

        next

      else

        hamming_count += 1

      end

    end

    return hamming_count

  end

end