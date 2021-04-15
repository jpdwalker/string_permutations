# frozen_string_literal: true

require 'pry'

def permutate_string(result, input)
  result + input[0] if input.length == 1

  if input.length == 2
    puts result + input[0] + input[1]
    puts result + input[1] + input[0]
  end

  (0...input.length).map do |i|
    first = result + input[i]
    second = (i > 0 ? input[0..(i-1)] : '') + (input[(i+1)..-1] || '')
    permutate_string(first, second)
  end
end
