module SortingSuite
  # This class is used to sort an array using 'Bubbling'
  class BubbleSort
    attr_reader :set

    def initialize(set)
      @set = set
    end

    def sort
      (set.count).times do
        index = 0
        until index == set.count - 1
          previous = set[index]
          current = set[index + 1]

          # Swap
          swap(current, previous, index) if current < previous

          # Increase index to reference next pair in array
          index += 1
        end
      end

      set
    end

    def swap(current, previous, index)
      set[index] = current
      set[index + 1] = previous
    end
  end
end

SortingSuite::BubbleSort.new([4, 2, 5, 3, 1]).sort

SortingSuite::BubbleSort.new(%w(d a b c)).sort
