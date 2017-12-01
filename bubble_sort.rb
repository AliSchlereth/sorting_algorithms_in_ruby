require 'benchmark'

class BubbleSort

  def sort(original_input)
    counter = 0
    original_input.each.with_index do |letter, index|
      unless original_input[index+1] == nil
        if original_input[index] > original_input[index+1]
          original_input[index], original_input[index +1] = original_input[index +1], original_input[index]
          counter += 1
        end
      end
    end
    if counter == 0
      p original_input
    else
      sort(original_input)
    end
  end


end

sorter = BubbleSort.new
Benchmark.bm do |performance|
  performance.report {sorter.sort(["d", "b", "a", "c"])}
end
