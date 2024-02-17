#
# @lc app=leetcode id=1642 lang=ruby
#
# [1642] Furthest Building You Can Reach
#

# @lc code=start
# @param {Integer[]} heights
# @param {Integer} bricks
# @param {Integer} ladders
# @return {Integer}
def furthest_building(heights, bricks, ladders)
  left = 0
  right = heights.count - 1
  result = 0

  while left <= right
    mid = (left + right)/2
    if can_reach?(heights[0...mid+1], bricks, ladders)
      result = mid
      left = mid + 1
    else
      right = mid - 1
    end
  end

  result
end

def can_reach?(heights, bricks, ladders)
  diffs = []
  n = heights.count

  heights.each_with_index do |h, i|
    break if i >= n - 1
    diffs << heights[i+1] - h if h < heights[i+1]
  end

  diffs.sort!

  diffs.each do |diff|
    if bricks >= diff
      bricks -= diff
    elsif ladders > 0
      ladders -= 1
    else
      return false
    end
  end

  true
end

# @lc code=end
