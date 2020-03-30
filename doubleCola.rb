# I know how to solve it, but I cannot write code now because of my feeling 
def who_is_next(names, r)
  n = 1
  while 10 * 2 ** n - 10 < r
    n += 1
  end
  ( r - ( 10 * 2 ** n - 10 ) - 1 ) % 2 / n
end