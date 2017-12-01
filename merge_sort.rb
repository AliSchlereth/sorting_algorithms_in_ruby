require 'pry'

class MergeSort
  # attr_reader :result

  def sort(original_input)
    return original_input if original_input.length == 1
    mid = original_input.length/2
    left = sort(original_input[0..mid-1])
    right = sort(original_input[mid..-1])
    merge(left,right)
  end

  def merge(left, right)
    result = []
    while left.length > 0 && right.length > 0
      if left[0] < right[0]
        result << left.shift
      elsif right[0] < left[0]
        result << right.shift
      elsif left[0] == right[0]
        result << left.shift
        result << right.shift
      end
    end

    if left.empty? && !right.empty?
      result += right
    elsif right.empty? && !left.empty?
      result += left
    end
    result


  end






end

sorter = MergeSort.new
# => #<MergeSort:0x007f81a19e94e8>
p sorter.sort(["d", "b", "a", "c"])
# sorter.sort(["d", "b", "a", "c", "e", "g", "f", "h"])

# => ["a", "b", "c", "d"]
