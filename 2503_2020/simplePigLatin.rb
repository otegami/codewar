SYMBOL = ["!", "?"]

def pig_it text
  result = []
  text.split(" ").each do |word|
    p chars = word.chars
    p chars.shift(0)
    SYMBOL.include?(chars[0]) ? chars << chars.shift : chars << chars.shift + 'ay'
    result << chars.reduce(:+)
  end
  p result.join(" ")
end

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end