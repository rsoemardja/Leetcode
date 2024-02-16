#
# @lc app=leetcode id=11 lang=ruby
#
# [11] Container With Most Water
#

# @lc code=start
# @param {Integer[]} height
# @return {Integer}
# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left, right = 0, height.size - 1
  max_water = 0

  while left < right
    width = right - left
    container_height = [height[left], height[right]].min
    area = container_height * width
    max_water = [max_water, area].max

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end

  max_water
end

# @lc code=end
