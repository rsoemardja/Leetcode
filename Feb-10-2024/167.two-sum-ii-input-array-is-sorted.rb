#
# @lc app=leetcode id=167 lang=ruby
#
# [167] Two Sum II - Input Array Is Sorted
#

# @lc code=start
# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  left = 0
  right = numbers.length - 1

  while left < right
    current_sum = numbers[left] + numbers[right]

    if current_sum == target
      return [left + 1, right + 1]
    elsif current_sum < target
      left += 1
    else
      right -= 1
    end
  end

  # If no solution is found, raise an error
  raise "No two numbers sum up to the target"
end
# @lc code=end
