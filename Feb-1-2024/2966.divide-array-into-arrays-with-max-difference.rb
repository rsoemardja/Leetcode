#
# @lc app=leetcode id=2966 lang=ruby
#
# [2966] Divide Array Into Arrays With Max Difference
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[][]}
def divide_array(nums, k)
  # sort the array
  nums.sort!
  # create a new array to store the result
  result = []

  # create a new array to store the subarray
  i = 0
  while i < nums.length
    # create a new array to store the subarray
    group = [nums[i]]
    # create a new variable to store the max difference
    for j in (i + 1)...(i + 3)
      # if the difference between the last element and the current element is less than or eq
      # to k, then add the current element to the subarray
      if nums[j] - group.last <= k
        group << nums[j]
      else
        break
      end
    end
    # add the subarray to the result
    result << group
    i += 3
  end

  # return the result
  return [] if result.empty?
  result
end
# @lc code=end
