def order_weight(string)
  string.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
end

# def weight(str)
# str.to_s.chars.map(&:to_i).reduce(:+)
# end

# def order_weight(str)
# str.split.sort { |a,b| [weight(a),a] <=> [weight(b),b] }.join(" ")
# end
# def order_weight(strng)
#   string = ''
#   results = Array.new
#   array = []
#   numbers = strng.split(" ").map(&:to_i)
#   numbers.each do |number|
#     if results[number.digits.reduce(:+)].nil?
#       results[number.digits.reduce(:+)] = ["#{number}"]
#     else
#       results[number.digits.reduce(:+)] << "#{number}"
#     end
#   end
#   results.each do |result|
#     next if result.nil?
#     if result.length > 1
#       array << result.sort.join(" ")
#     else
#       array << result[0]
#     end
#   end
#   array.join(" ")
# end