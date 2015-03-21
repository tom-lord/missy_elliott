require 'minitest/autorun'
require './lib/missy_elliott.rb'

describe "MissyElliott" do
  it "Must be worth it" do
    original = "Is it worth it?"
    encoded = MissyElliott.encode(original)
    decoded = MissyElliott.decode(encoded)
    original.must_equal decoded
  end
end

