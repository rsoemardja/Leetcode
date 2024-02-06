#
# @lc app=leetcode id=49 lang=ruby
#
# [49] Group Anagrams
#

# @lc code=start
# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    anagrams = Hash.new { |hash, key| hash[key] = [] }
    strs.each do |word|
      key = word.chars.sort.join
      anagrams[key] << word
    end
    anagrams.values
end
# @lc code=end
