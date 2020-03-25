class maximumSubarraySum 
  def self.max_sequence(arr)
    results = arr.each_with_object([0]) do |number, results|
      results << [number, number += results.last].max
    end
    results.max
  end
end 