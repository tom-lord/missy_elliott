require 'minitest/autorun'
require './lib/missy_elliot.rb'

describe "MissyElliot" do
  it "Must be worth it" do
    original = "Is it worth it?"
    encoded = MissyElliot.encode(original)
    decoded = MissyElliot.decode(encoded)
    original.must_equal decoded
  end
end

