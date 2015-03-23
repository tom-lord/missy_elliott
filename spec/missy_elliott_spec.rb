require 'minitest/autorun'
require './lib/missy_elliott.rb'

describe "MissyElliott" do
  it "Must be worth it" do
    original = "Is it worth it?"
    encoded = MissyElliott.encode(original)
    decoded = MissyElliott.decode(encoded)
    original.must_equal decoded
  end

  it "Tests be more explicit" do
    encoded = File.read './spec/fixtures/encode_example'
    decoded = MissyElliott.decode(encoded)
    decoded.must_equal "Is it really worth it?"
  end
end

