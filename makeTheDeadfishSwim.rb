def parse(data)
  # your code here
  # trun data into array
  commands = data.split("")
  default = 0
  result = Array.new
  # execute commands
  commands.each do |command|
    case command
    when "i"
      default += 1
    when "d"
      default -= 1
    when "s"
      default **= 2
    when "o"
      result.push(default)
    end
  end
  result
end