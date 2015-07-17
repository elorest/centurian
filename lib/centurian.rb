require "centurian/version"

module Centurian
  ROMAN = {M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90, L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1}

  def to_roman
    number = self
    ROMAN.reduce("") do |roman, (k, v)|
      count, number = number.divmod(v)
      roman << (k.to_s * count)
    end
  end
end

Fixnum.include Centurian
