OPPOSITE = {
  "NORTH" => "SOUTH",
  "SOUTH" => "NORTH",
  "EAST"  => "WEST",
  "WEST"  => "EAST"
}

def dirReduc(arr)
  stack = []
  arr.each do |dir|
    OPPOSITE[dir] == stack.last ? stack.pop : stack.push(dir)
  end
  stack
end

OPPOSITE = {
  "NORTH" => "SOUTH",
  "SOUTH" => "NORTH",
  "EAST"  => "WEST",
  "WEST"  => "EAST"
}

def dirReduc(arr)
  arr.each_with_object([]) { |direction, path|
    path.last == OPPOSITE[direction] ? path.pop : path.push(direction)
  }
end

# require 'matrix'
# class Direction
#   def self.dirReduc(arr)
#     # This is the first order
#     result = Vector[0, 0]
#     finalOrders = Array.new
#     # Change all orders to vectors
#     arr.each do |order|
#       case order
#         when "NORTH"
#           result += Vector[0, 1]
#         when "SOUTH"
#           result += Vector[0, -1]
#         when "EAST"
#           result += Vector[1, 0]
#         when "WEST"
#           result += Vector[-1, 0]
#       end
#     end
#     puts result
#     return [] if result[0] == 0 && result[1] == 0
#     puts result 
#     if result[0] < 0
#       puts "w"
#       p result
#       result[0].abs.times do
#         finalOrders << "WEST"
#       end
#     elsif result[0] > 0
#       result[0].times do
#         finalOrders << "EAST"
#       end
#     else
#       puts "a"
#     end
#     if result[1] < 0
#       result[1].abs.times do
#         finalOrders << "SOUTH"
#       end
#     elsif result[1] > 0
#       result[1].times do
#         finalOrders << "NORTH"
#       end
#     else 
#       puts "b"
#     end
#     finalOrders
#   end
# end  