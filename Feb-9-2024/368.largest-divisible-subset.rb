#
# @lc app=leetcode id=368 lang=ruby
#
# [368] Largest Divisible Subset
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[]}
def largest_divisible_subset(nums)
  # Sort the numbers in ascending order
  sorted_nums = nums.sort

  # Initialize an array to store lengths of longest divisible subsequences
  dp = Array.new(sorted_nums.size, 1)

  # Initialize an array to store predecessors for reconstructing the subset
  predecessors = Array.new(sorted_nums.size, -1)

  # Iterate through numbers from second to last, finding longest ending sequence
  (1...sorted_nums.size).each do |i|
    (0...i).each do |j|
      if sorted_nums[i] % sorted_nums[j] == 0 && dp[i] < dp[j] + 1
        dp[i] = dp[j] + 1
        predecessors[i] = j
      end
    end
  end

  # Reconstruct the largest divisible subset using predecessors
  result = []
  i = dp.index(dp.max)
  while i != -1
    result << sorted_nums[i]
    i = predecessors[i]
  end

  # Return the largest divisible subset
  result.reverse
end

# Example usage
nums = [1, 2, 4, 8]
largest_subset = largest_divisible_subset(nums)
puts largest_subset  # Output: [4, 2, 1]
# @lc code=end
