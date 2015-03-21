module MissyElliott
  def self.encode(input)
    input.bytes.map do |byte|
      bits = byte.to_s(2).rjust(8, "0").split("")
      bits << bits.shift # Shift yo bits down
      flip_it(bits).reverse.join.to_i(2).chr # Flip it and reverse it
    end.join
  end

  def self.decode(input)
    input.bytes.map do |byte|
      bits = byte.to_s(2).rjust(8, "0").split("")
      bits = flip_it(bits.reverse) # Reverse it and flip it
      bits.unshift(bits.pop).join.to_i(2).chr # Shift yo bits up
    end.join
  end

  private
  def self.flip_it(bits)
    bits.map do |bit|
      bit == "1" ? "0" : "1"
    end
  end
end

