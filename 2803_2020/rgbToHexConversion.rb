def rgb(r, g, b)
  r = 255 if r > 255
  g = 255 if g > 255
  b = 255 if b > 255
  r.to_s(16) <= '0' ? r = '00' : r = r.to_s(16)
  g.to_s(16) <= '0' ? g = '00' : g = g.to_s(16)
  b.to_s(16) <= '0' ? b = '00' : b = b.to_s(16)
  (r + g + b).upcase
end

def rgb(r, g, b)
  [r, g, b].map do |c|
    if c <= 0 
      "00"
    elsif c > 255
      "FF"
    else
      c.to_s(16).upcase    
    end
  end.join('')
end