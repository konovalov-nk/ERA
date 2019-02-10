module ERA
  module Arrays
    # Original URL: https://www.interviewbit.com/problems/max-sum-contiguous-subarray/
    #
    # Find the contiguous subarray within an array (containing at least one
    #   number) which has the largest sum.
    # For example:
    #   Given the array [-2, 1, -3, 4, -1, 2, 1, -5, 4],
    #   the contiguous subarray [4, -1, 2, 1] has the largest sum = 6.
    # For this problem, return the maximum sum.
    #
    # Tags: kadane, dynamic prorgramming
    class MaxSumContiguousSubarray
      # @param array : constant array of integers
      # @return an integer
      def solution(array)
        sum, *a = array
        a.reduce(sum) do |max, x|
          sum = [x, sum + x].max
          [max, sum].max
        end
      end
    end
  end
end
