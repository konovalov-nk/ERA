module ERA
  module Arrays
    # Original URL: https://www.interviewbit.com/problems/maxspprod/
    #
    # You are given an array A containing N integers. The special product
    #   of each ith integer in this array is defined as the product
    #   of the following:
    #
    #   LeftSpecialValue: For an index i, it is defined as the index j
    #     such that A[j]>A[i] (i>j). If multiple A[j]’s are present in
    #     multiple positions, the LeftSpecialValue is the maximum value of j.
    #
    #   RightSpecialValue: For an index i, it is defined as the index j
    #     such that A[j]>A[i] (j>i). If multiple A[j]s are present in
    #     multiple positions, the RightSpecialValue is the minimum value of j.
    #
    #   Write a program to find the maximum special product of any
    #     integer in the array.
    #
    #   Input: You will receive array of integers as argument to function.
    #   Return: Maximum special product of any integer in the
    #     array modulo 1000000007.
    #
    #   Note: If j does not exist, the LeftSpecialValue and RightSpecialValue
    #     are considered to be 0.
    #
    #   Constraints 1 <= N <= 10^5 1 <= A[i] <= 10^9
    #
    # For example:
    #   A : [3, 6, 8, 9, 2, 4]
    #   Output : 15
    #
    # Tags: pre-compute, stacks
    # Time Complexity: O(n)
    # Space Complexity: O(n)
    class Maxspprod
      # @param array : constant array of integers
      # @return an integer
      def solution(array)
        return 0 unless array.is_a? Array
        return 0 if array.size < 4

        stack = []
        left = []

        array.each_with_index do |el, idx|
          stack.pop while !stack.empty? && stack.last[0] <= el
          left << (stack.empty? ? 0 : stack.last[1])
          stack.push [el, idx]
        end
        stack = []

        array.each_with_index.reverse_each.reduce(0) do |max, (el, idx)|
          stack.pop while !stack.empty? && stack.last[0] <= el
          right_idx = (stack.empty? ? 0 : stack.last[1])
          stack.push [el, idx]

          [left[idx] * right_idx, max].max
        end % 1_000_000_007
      end
    end
  end
end
