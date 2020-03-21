def calc(expr)
  tokens = expr.split
  return 0 unless tokens.any?
  stack = []
  tokens.each do |token|
    begin
      stack << Float(token)
    rescue
      stack << stack.pop(2).reduce(token)
    end
  end
  stack.last
end