# def persistence(n)
#   # step number
#   step = 0
#   # change number into digits
#   digits = n.to_s.split("").map(&:to_i)
#   while digits.length > 1
#     # multiply all of digits
#     product = digits.reduce(:*)
#     digits = product.to_s.split("").map(&:to_i)
#     step += 1
#   end
#   return step
# end

def persistence(n)
  n < 10 ? 0 : 1 + persistence(n.digits.reduce(&:*))
end