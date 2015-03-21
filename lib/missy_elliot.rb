class MissyElliot
  def encode(input)
    result = ""
    input.each_char do |char|
      bits = char.ord.to_s(2).rjust(8, "0").split("")
      bits << bits.shift # Shift yo bits down
      result << flip_it(bits).reverse.join.to_i(2).chr # Flip it and reverse it
    end
    result
  end

  def decode(input)
    result = ""
    input.each_char do |char|
      bits = char.ord.to_s(2).rjust(8, "0").split("")
      bits = flip_it(bits.reverse) # Reverse it and flip it
      result << bits.unshift(bits.pop).join.to_i(2).chr # Shift yo bits up
    end
    result
  end

  class << self
    def encode(input)
      new.encode(input)
    end
    def decode(input)
      new.decode(input)
    end
  end

  private
  def flip_it(bits)
    bits.map do |bit|
      bit == "1" ? "0" : "1"
    end
  end
end

