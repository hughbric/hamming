class Hamming
  def self.compute(strand, comparison)    
    raise ArgumentError, "Strand lengths are not equal" unless strand.length == comparison.length
    
    c_bytes = comparison.each_byte
    strand.each_byte.count do |item|
      item != c_bytes.next
    end
  end
end