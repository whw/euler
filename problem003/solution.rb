#!/usr/bin/env ruby

def factor(number, factors)
  (2..Math.sqrt(number).to_i).each do |possible_factor|
    if number % possible_factor == 0
      factors.push(possible_factor)
      return factor(number / possible_factor, factors)

    end
  end

  factors.push(number)
end

puts factor(ARGV[0].to_i, []).sort.last
