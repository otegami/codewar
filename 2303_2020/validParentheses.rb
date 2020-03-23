OPPOSITE = {
  ")" => "(",
  "(" => "error"
}
def valid_parentheses(string)
  stack = Array.new
  string.chars.each do |char|
    next if char != ")" && char!= "("
    OPPOSITE[char] == stack.last ? stack.pop : stack.push(char)
  end
  stack.empty? ? true : false
end

# def valid_parentheses(string)
#   open = 0
#   string.chars.each do |c|
#     open += 1 if c == "("
#     open -= 1 if c == ")"
#     return false if open < 0
#   end
#   open == 0
# end
#   stack = ["a"]
#   p string.chars
#   #your code here
#   string.chars.each do |char|
#     if char.empty?
#     elsif OPPOSITE[char] == stack.last
#       stack.pop
#     elsif char == "("
#       stack.push(char)
#     else  
#     end
#   end
#   p stack
#   stack.length == 1 ? true : false