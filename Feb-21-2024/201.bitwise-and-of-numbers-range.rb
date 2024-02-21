#
# @lc app=leetcode id=201 lang=ruby
#
# [201] Bitwise AND of Numbers Range
#

# @lc code=start
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def range_bitwise_and(left, right)
  shift_count = 0
  while left < right
    left >>= 1
    right >>= 1
    shift_count += 1
  end
  return left << shift_count
end
# @lc code=end
