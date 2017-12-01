require 'pry'

class InsertionSort

  # Need an empty array to sort into
  # Select first position of input array
  # Compare the selected element to the sorted array
  # Place the new element into the sorted array by
  # comparing new element to each element in order
  # Place new element into sorted array

  def sort(input)
    sorted_elements = []
    element = input.shift
    sorted_elements << element
    selecter(input, sorted_elements)
  end

  def selecter(input, sorted_elements)
    if input.empty? == true
      p sorted_elements
    else
      element = input.shift
      place_in_sorted_array(element, input, sorted_elements)
    end
  end

  def place_in_sorted_array(element, input, sorted_elements)
    sorted_elements.each.with_index do |sorted, index|
      if element.chr < sorted.chr
        sorted_elements.insert(index, element)
        break
      elsif index == (sorted_elements.length-1) && element.chr > sorted.chr
        sorted_elements.insert(index +1, element)
        break
      end
    end
    selecter(input, sorted_elements)
  end

end



# sorter = InsertionSort.new
# sorter.sort(["d", "b", "a", "c"])
# => ["a", "b", "c", "d"]
