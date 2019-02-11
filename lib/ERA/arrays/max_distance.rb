module ERA
  module Arrays
    # Original URL: https://www.interviewbit.com/problems/max-distance/
    #
    # Given an array A of integers, find the maximum of j - i subjected
    #   to the constraint of A[i] <= A[j].
    # If there is no solution possible, return -1.
    #
    # For example:
    #   A : [3 5 4 2]
    #   Output : 2
    #   for the pair (3, 4)
    #
    # Tags: , dynamic programming
    # Time Complexity: O(n * log n)
    # Space Complexity: O(n)
    class MaxDistance
      # @param array : constant array of integers
      # @return an integer
      def solution(array)
        return -1 unless array.is_a?(Array)

        max = 0
        sorted = array.each_with_index.map.sort.map(&:last)

        sorted.reverse_each.reduce(0) do |result, index|
          max = [max, index].max
          next result if result > max - index

          max - index
        end
      end
    end
  end
end
