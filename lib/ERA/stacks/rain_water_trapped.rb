module ERA
  module Stacks
    # Original URL: https://www.interviewbit.com/problems/rain-water-trapped/
    #
    # Given n non-negative integers representing an elevation map
    #   where the width of each bar is 1, compute how much water it is able
    #   to trap after raining.
    # For example:
    #   Given [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1], return 6.
    #
    # Tags: pre-computing
    # Time Complexity: O(n)
    # Space Complexity: O(n)
    class RainWaterTrapped
      # @param array : constant array of integers
      # @return an integer
      def solution(array)
        return 0 if array.size < 3

        max_left, *, max_right = array
        left_heights = array.map do |height|
          max_left = [max_left, height].max
        end

        right_heights = array.reverse_each.map do |height|
          max_right = [max_right, height].max
        end.reverse

        array.zip(left_heights, right_heights).reduce(0) do |water, (height, left, right)|
          water + [left, right].min - height
        end
      end
    end
  end
end
