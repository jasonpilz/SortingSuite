require_relative '../lib/insertion_sort.rb'

# This class is used to test the InsertionSort class.
class InsertionSortTest < Minitest::Test
  def test_sort_empty_array
    insertion_sort = SortingSuite::InsertionSort.new([])
    assert_equal [], insertion_sort.sort
  end

  def test_sort_array_of_one
    insertion_sort = SortingSuite::InsertionSort.new([4])
    assert_equal [4], insertion_sort.sort
  end

  def test_sort_array_of_two_already_sorted
    insertion_sort = SortingSuite::InsertionSort.new([5, 6])
    assert_equal [5, 6], insertion_sort.sort
  end

  def test_sort_array_of_two_not_sorted
    insertion_sort = SortingSuite::InsertionSort.new([5, 3])
    assert_equal [3, 5], insertion_sort.sort
  end

  def test_sort_array_of_three_already_sorted
    insertion_sort = SortingSuite::InsertionSort.new([3, 4, 5])
    assert_equal [3, 4, 5], insertion_sort.sort
  end

  def test_sort_array_of_three_not_sorted
    insertion_sort = SortingSuite::InsertionSort.new([6, 2, 4])
    assert_equal [2, 4, 6], insertion_sort.sort
  end

  def test_sort_array_of_four_already_sorted
    insertion_sort = SortingSuite::InsertionSort.new([3, 5, 6, 7])
    assert_equal [3, 5, 6, 7], insertion_sort.sort
  end

  def test_sort_array_of_four_reversed
    insertion_sort = SortingSuite::InsertionSort.new([9, 8, 7, 6])
    assert_equal [6, 7, 8, 9], insertion_sort.sort
  end

  def test_sort_array_of_four_not_sorted
    insertion_sort = SortingSuite::InsertionSort.new([5, 3, 4, 1])
    assert_equal [1, 3, 4, 5], insertion_sort.sort
  end

  def test_sort_array_of_five_already_sorted
    insertion_sort = SortingSuite::InsertionSort.new([1, 3, 4, 6, 7])
    assert_equal [1, 3, 4, 6, 7], insertion_sort.sort
  end

  def test_sort_array_of_five_not_sorted
    insertion_sort = SortingSuite::InsertionSort.new([5, 3, 4, 1, 2])
    assert_equal [1, 2, 3, 4, 5], insertion_sort.sort
  end
end
