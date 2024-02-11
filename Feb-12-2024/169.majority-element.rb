#
# @lc app=leetcode id=169 lang=ruby
#
# [169] Majority Element
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  # Initialize count and candidate variables
  count = 0
  candidate = nil

  # Iterate through the array
  nums.each do |num|
    # If count reaches 0, set the new candidate
    if count == 0
      candidate = num
    end

    # Increment count if current number matches the candidate, otherwise decrement
    count += (num == candidate ? 1 : -1)
  end

  # Raise an error if no majority element found
  raise "No majority element exists" if count <= 0

  # Return the candidate with majority count
  candidate
end

# Test cases
nums = [3, 2, 3]
puts majority_element(nums)  # Output: 3

nums = [2, 2, 1, 1, 1, 2, 2]
puts majority_element(nums)  # Output: 2

nums = [1, 2, 3]
begin
  majority_element(nums)
rescue StandardError => e
  puts e.message  # Output: No majority element exists
end
# @lc code=end
