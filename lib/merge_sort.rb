module SortingSuite
  # This class is used to sort an array using 'merging'/recursion
  class MergeSort
    attr_reader :numbers

    def initialize(numbers)
      @numbers = numbers
    end

    def sort

      merge_sort(numbers)

    end

    def merge_sort(ary)
      return ary if ary.count < 2
      split_array = ary.each_slice((ary.count + 1) / 2).to_a
      first_half = split_array[0]
      last_half = split_array[1]

      sorted = merge(first_half, last_half)
      return sorted

    end

    def merge(first, last)

    end

  end
end

#SortingSuite::MergeSort.new([2, 3]).sort

SortingSuite::MergeSort.new([2, 0, 1, 3, 4]).sort
