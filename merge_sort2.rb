require 'pry'

class MergeSort

  def sort(input)
    if input.length <= 1
      return input
    end

    left = []
    right = []
     input.each.with_index do |element, index|
       if index.odd?
         left << element
       else
         right << element
       end
     end
    #  binding.pry
     left = sort(left)
     right = sort(right)
    #  binding.pry
    return merge(left, right)
  end

  def merge(left,right)
    result = []
    while left.length > 0 && right.length > 0
      if left.first.chr < right.first.chr
        result << left.shift
      else
        result << right.shift
      end
    end
    # binding.pry
    while left.length > 0
      result << left.shift
    end
    while right.length > 0
      result << right.shift
    end
    result
  end


end


# sorted = MergeSort.new
# p sorted.sort(["d", "b", "a", "c", "e", "g", "t"])
