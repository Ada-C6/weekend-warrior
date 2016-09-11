class Hamming

  def self.compute(strand_1, strand_2)

    if strand_1 + strand_2 == ""
      
      return 0 

    end

    if strand_1.size > strand_2.size

      raise ArgumentError.new("Strand_1 is longer!")

    elsif strand_2.size > strand_1.size

      raise ArgumentError.new("Strand_2 is longer!")

    end

  end

end