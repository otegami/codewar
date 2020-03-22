def solution(number)
  # put your solution here
  x3orx5_lists = Array.new
  (3...number).each do |i|
    x3orx5_lists << i if (i % 3 == 0 || i % 5 ==0 )
  end
  x3orx5_lists.reduce(:+)
 end

# def solution(number)
#   (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
# end

# def solution(number)
#   (1...number).select{|n| (n % 5).zero? || (n % 3).zero?}.reduce(:+)
# end

# Learn methods select zero? inject(reduce)