require 'set'
def sum_pairs(ints, s)
  seen = Set.new
  ints.each { |v|
    return [s - v, v] if seen.include?(s - v)
    seen << v
  }
  nil
end
def sum_pairs(ints, s)
  seen = {}
  for i in ints do
    return [s-i, i] if seen[s-i]
    seen[i] = true
  end
  nil
end
# def sum_pairs(ints, s)
#   result = []
#   ints.each do |int|
#     ints.each do |pair|
#       result << int << pair if pair == (s - int)
#     end
#     ints.shift
#   end
#   result.shift(2)
# end