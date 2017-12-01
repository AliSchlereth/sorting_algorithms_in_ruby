require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative './bubble_sort'

class BubbleSortTest < MiniTest::Test

  def test_bubble_sort_sorts_four_letters
    array = ["d", "b", "a", "c"]
    bubble_sort = BubbleSort.new
    sorted = bubble_sort.sort(array)
    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_bubble_sort_sorts_numbers
    array = [5,2,10,4]
    bubble_sort = BubbleSort.new
    sorted = bubble_sort.sort(array)
    assert_equal [2,4,5,10], sorted
  end

  def test_bubble_sort_sorts_numbers_and_letters_mixed
    array = ["5", "2", "b", "4", "z"]
    bubble_sort = BubbleSort.new
    sorted = bubble_sort.sort(array)
    assert_equal ["2", "4", "5", "b", "z"], sorted
  end





end
