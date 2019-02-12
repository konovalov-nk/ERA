module ERA
  module Arrays
    # Original URL: https://www.interviewbit.com/problems/repeat-and-missing-number-array/
    #
    # You are given a read only array of n integers from 1 to n.
    # Each integer appears exactly once except A which appears twice and B which
    #   is missing.
    # Return A and B.
    #
    # Note: Your algorithm should have a linear runtime complexity.
    #   Could you implement it without using extra memory?
    # Note that in your output A should precede B.
    #
    # For example:
    #   Input: [3 1 2 5 3]
    #   Output: [3, 4]
    #   A = 3, B = 4
    #
    # Tags: math
    # Time Complexity: O(n)
    # Space Complexity: O(1)
    class RepeatAndMissingNumberArray
      # @param array : constant array of integers
      # @return an integer
      def solution(array)
        return -1 unless array.is_a? Array

        n = array.size
        arithmetic_sum = (n + 1) * n / 2
        quadratic_sum = (n + 1) * (2 * n + 1) * n / 6

        x, y = array.reduce([arithmetic_sum, quadratic_sum]) do |(x, y), el|
          [x - el, y - el**2]
        end

        [(y - x**2) / 2, (y + x**2) / 2]
      end
    end
  end
end
