class Hamming
  def self.compute(strand, comparison)    
    raise ArgumentError unless strand.length == comparison.length
    
    return 0 if strand == comparison

    c_bytes = comparison.bytes
    strand.each_byte.with_index.count do |item, index|
      item != c_bytes[index]
    end    
  end
end