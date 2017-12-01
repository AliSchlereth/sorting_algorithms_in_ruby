require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative './insertion_sort'

class InsertionSortTest < MiniTest::Test

  def test_insertionsort_sorts_four_letters
    sorted = InsertionSort.new
    assert_equal ["a", "b", "c", "d"], sorted.sort(["d", "b", "a", "c"])
  end

  def test_insertionsort_sorts_elements_long_list_of_letters
    sorted = InsertionSort.new
    assert_equal ["a", "b", "c", "d", "e", "g", "t"], sorted.sort(["d", "b", "a", "c", "e", "g", "t"])
  end

  def test_insertionsort_sorts_numbers
    sorted = InsertionSort.new
    assert_equal [2, 3, 4, 6], sorted.sort([4,2,6,3])
  end

  def test_insertionsort_sorts_numbers_and_letters
    sorted = InsertionSort.new
    assert_equal [4, 6, "b", "z"], sorted.sort([4,"b",6,"z"])
  end

  # def test_insertionsort_accepts_empty_array
  #   sorted = InsertionSort.new
  #   assert_equal [], sorted.sort([])
  # end


end
