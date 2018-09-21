require 'awesome_print'
# Given two strings s and t of equal length, the Hamming distance between s and t, denoted dH(s,t), is the number of corresponding symbols that differ in s and t. See Figure 2.
#
# Given: Two DNA strings s and t of equal length (not exceeding 1 kbp).
#
# Return: The Hamming distance dH(s,t).
class Hamming

  def initialize(strand_a, strand_b)
    @strand_a = strand_a
    @strand_b = strand_b
  end

  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.length != strand_b.length

    return strand_a.chars.zip(strand_b.chars).select{ |a,b| a != b}.count
    #
    # strand_a = strand_a.split("")
    # strand_b = strand_b.split("")
    # reject_a = strand_a.reject{|nucl| strand_b.find{|nucl_b| nucl_b == nucl}}
    # reject_b = strand_b.reject{|nucl_b| strand_a.find{|nucl| nucl == nucl_b}}

    # return reject_a.length > reject_b.length ? reject_a.length : reject_b.length
  end

end


#array method .zip for arrays
#zip merges elements of array into an array of arrays where the same indices are within the same array. the characters in each array are compared against each other, and those that are not the same are into a new array of unequal values, and the count of that array is returned.

#string.chars is equivalent to string.split('')
