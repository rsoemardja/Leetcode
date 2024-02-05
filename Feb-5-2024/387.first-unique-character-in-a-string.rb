#
# @lc app=leetcode id=387 lang=ruby
#
# [387] First Unique Character in a String
#

# @lc code=start
# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  # Create a hash to store character counts
  char_counts = Hash.new(0)
  s.chars.each { |char| char_counts[char] += 1 }

  # Find the first character with a count of 1
  s.chars.each_with_index do |char, index|
    return index if char_counts[char] == 1
  end

  # No non-repeating character found
  -1
end
# @lc code=end
