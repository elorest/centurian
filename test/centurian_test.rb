require 'centurian'
require 'minitest/autorun'
require 'minitest/pride'

describe Fixnum do
  it "must have to_roman method" do
    12.must_respond_to :to_roman
  end

  it "returns I for 1" do
    1.to_roman.must_equal "I"
  end

  it "returns II for 2" do
    2.to_roman.must_equal "II"
  end

  it "returns IV for 4" do
    4.to_roman.must_equal "IV"
  end

  it "returns X for 10" do
    10.to_roman.must_equal "X"
  end

  it "returns VI for 6" do
    6.to_roman.must_equal "VI"
  end
end
