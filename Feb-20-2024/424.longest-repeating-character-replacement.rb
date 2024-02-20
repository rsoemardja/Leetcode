#
# @lc app=leetcode id=424 lang=ruby
#
# [424] Longest Repeating Character Replacement
#

# @lc code=start
# @param {String} s
# @param {Integer} k
# @return {Integer}
# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  # Track characters and their frequencies
  char_counts = Hash.new(0)
  max_freq = 0

  # Sliding window variables
  left = 0
  window_size = 0

  # Iterate through the string
  s.each_char.with_index do |char, right|
    # Update character frequencies
    char_counts[char] += 1
    max_freq = [max_freq, char_counts[char]].max

    # Check if window needs shrinking
    window_size = right - left + 1
    available_replacements = window_size - max_freq

    while available_replacements > k && left < right
      # Shrink window from left
      char_counts[s[left]] -= 1
      left += 1
      window_size -= 1
      available_replacements = window_size - max_freq
    end
  end

  # Return the maximum window size
  window_size
end

# Example usage:
s = "ABAB"
k = 2
result = character_replacement(s, k)
puts result # Output: 4

s = "AABABBA"
k = 1
result = character_replacement(s, k)
puts result # Output: 4

# @lc code=end
