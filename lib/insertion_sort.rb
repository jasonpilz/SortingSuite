module SortingSuite
  # This class is used to sort and array of numbers using 'Insertion'
  class InsertionSort
    attr_reader :numbers

    def initialize(numbers)
      @numbers = numbers
    end

    def sort
      sorted = []

      # Take each number in the given array
      numbers.each do |number|
        inserted = false

        if sorted.empty?
          sorted << number
          inserted = true
        end

        # Compare the number to each sorted number and insert
        index = 0

        (sorted.count).times do
          if inserted == true
            break
          elsif number < sorted[index]
            sorted.insert(index, number)
            inserted = true
          else
            index += 1
          end
        end

        sorted << number if inserted == false
      end

      sorted
    end
  end
end

SortingSuite::InsertionSort.new([3, 2, 1]).sort

SortingSuite::InsertionSort.new([2, 5, 4, 1, 3]).sort
