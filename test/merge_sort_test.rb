require_relative '../lib/merge_sort.rb'

# This class is used to test the MergeSort class functionality
class MergeSortTest < Minitest::Test
  def test_sort_empty_array
    merge_sort = SortingSuite::MergeSort.new([])
    assert_equal [], merge_sort.sort
  end

  def test_sort_array_of_one
    merge_sort = SortingSuite::MergeSort.new([5])
    assert_equal [5], merge_sort.sort
  end

  def test_sort_array_of_two_already_sorted
    merge_sort = SortingSuite::MergeSort.new([2, 3])
    assert_equal [2, 3], merge_sort.sort
  end

  def test_sort_array_of_two_not_sorted
    merge_sort = SortingSuite::MergeSort.new([6, 3])
    assert_equal [3, 6], merge_sort.sort
  end

  
end
