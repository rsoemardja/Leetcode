#
# @lc app=leetcode id=647 lang=ruby
#
# [647] Palindromic Substrings
#

# @lc code=start
# @param {String} s
# @return {Integer}
def count_substrings(s)
  n = s.length
  count = 0

  # Iterate over all possible centers of palindromes
  (0...2 * n - 1).each do |center|
    left = center / 2
    right = left + (center % 2)

    # Expand outwards to find the longest palindrome
    while left >= 0 && right < n && s[left] == s[right]
      count += 1
      left -= 1
      right += 1
    end
  end

  return count
end

# Example usage
s = "abc"
result = count_substrings(s)
print(result)  # Output: 3

s = "aaa"
result = count_substrings(s)
print(result)  # Output: 6

# @lc code=end
