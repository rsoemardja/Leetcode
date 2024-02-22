#
# @lc app=leetcode id=997 lang=ruby
#
# [997] Find the Town Judge
#

# @lc code=start
# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)

  n<2 and 1 or trust.transpose.reverse.reduce(:-).to_a.tally.key n-1 or -1

end

# @lc code=end
