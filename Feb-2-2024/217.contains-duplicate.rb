#
# @lc app=leetcode id=217 lang=ruby
#
# [217] Contains Duplicate
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    seen = Set.new

    nums.each do |num|
      return true if seen.include?(num)
      seen.add(num)
    end

    false
end
# @lc code=end
