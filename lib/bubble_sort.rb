module SortingSuite
  # This class is used to sort a given array of numbers
  class BubbleSort
    attr_reader :numbers

    def initialize(numbers)
      @numbers = numbers
    end

    def sort
      # Check if sorting is needed
      return numbers if numbers.size < 2

      bubble = numbers.size

      (bubble).times do
        index = 0
        until index == numbers.count - 1
          previous = numbers[index]
          current = numbers[index + 1]

          # Swap
          if current < previous
            numbers[index] = current
            numbers[index + 1] = previous
          end

          # Increase index to reference next pair in array
          index += 1
        end
      end

      return numbers
    end
  end
end

# bubble_sort = SortingSuite::BubbleSort.new([4, 2, 5, 3, 1])
# bubble_sort.sort
