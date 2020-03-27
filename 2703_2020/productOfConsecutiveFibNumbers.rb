def productFib(prod)
  a, b = [0, 1]
  while prod > a * b
    a, b = [b, a + b]
  end
  [a, b, prod == a * b]
end

# def productFib(prod)
#   i = 2
#   fibonacci = [0, 1]
#   while i
#     fibonacci << fibonacci_number(i) if fibonacci[i].nil?
#     return [fibonacci[i-1], fibonacci[i], true] if fibonacci[i] * fibonacci[i-1] == prod
#     return [fibonacci[i-1], fibonacci[i], false] if fibonacci[i] * fibonacci[i-1] > prod
#     i += 1
#   end
# end

# def fibonacci_number(n)
#   return n if n <= 1
#   fibonacci_number(n-2) + fibonacci_number(n-1)
# end
