require_relative '../lib/bubble_sort.rb'

# This class is used to test the BubbleSort class
class BubbleSortTest < Minitest::Test
  def test_sort_empty_array
    bubble_sort = SortingSuite::BubbleSort.new([])
    assert_equal [], bubble_sort.sort
  end

  def test_sort_array_of_one
    bubble_sort = SortingSuite::BubbleSort.new([2])
    assert_equal [2], bubble_sort.sort
  end

  def test_sort_array_of_two_already_sorted
    bubble_sort = SortingSuite::BubbleSort.new([3, 4])
    assert_equal [3, 4], bubble_sort.sort
  end

  def test_sort_array_of_two_not_sorted
    bubble_sort = SortingSuite::BubbleSort.new([4, 2])
    assert_equal [2, 4], bubble_sort.sort
  end

  def test_sort_array_of_three_already_sorted
    bubble_sort = SortingSuite::BubbleSort.new([1, 2, 3])
    assert_equal [1, 2, 3], bubble_sort.sort
  end

  def test_sort_array_of_three_not_sorted_one_swap
    bubble_sort = SortingSuite::BubbleSort.new([2, 1, 3])
    assert_equal [1, 2, 3], bubble_sort.sort
  end

  def test_sort_array_of_three_not_sorted
    bubble_sort = SortingSuite::BubbleSort.new([3, 2, 1])
    assert_equal [1, 2, 3], bubble_sort.sort
  end

  def test_sort_array_of_four_already_sorted
    bubble_sort = SortingSuite::BubbleSort.new([2, 3, 4, 5])
    assert_equal [2, 3, 4, 5], bubble_sort.sort
  end

  def test_sort_array_of_four_not_sorted
    bubble_sort = SortingSuite::BubbleSort.new([5, 2, 1, 0])
    assert_equal [0, 1, 2, 5], bubble_sort.sort
  end

  def test_sort_array_of_four_reversed
    bubble_sort = SortingSuite::BubbleSort.new([8, 7, 6, 5])
    assert_equal [5, 6, 7, 8], bubble_sort.sort
  end

  def test_sort_array_of_five_already_sorted
    bubble_sort = SortingSuite::BubbleSort.new([3, 4, 5, 6, 7])
    assert_equal [3, 4, 5, 6, 7], bubble_sort.sort
  end

  def test_sort_array_of_five_not_sorted
    bubble_sort = SortingSuite::BubbleSort.new([4, 2, 5, 3, 1])
    assert_equal [1, 2, 3, 4, 5], bubble_sort.sort
  end

  def test_sort_array_o_four_letters_already_sorted
    bubble_sort = SortingSuite::BubbleSort.new(%w(a b c d))
    assert_equal %w(a b c d), bubble_sort.sort
  end

  def test_sort_array_of_four_letters_not_sorted
    bubble_sort = SortingSuite::BubbleSort.new(%w(d a b c))
    assert_equal %w(a b c d), bubble_sort.sort
  end
end
