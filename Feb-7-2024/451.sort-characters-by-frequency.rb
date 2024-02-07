#
# @lc app=leetcode id=451 lang=ruby
#
# [451] Sort Characters By Frequency
#

# @lc code=start
# @param {String} s
# @return {String}
# @param {String} s
# @return {String}
def frequency_sort(s)
  # Count character frequencies
  char_counts = Hash.new(0)
  s.each_char { |char| char_counts[char] += 1 }

  # Sort characters by frequency (descending)
  sorted_chars = char_counts.sort_by { |char, count| -count }

  # Build the sorted string
  sorted_string = ""
  sorted_chars.each do |char, count|
    sorted_string << char * count
  end

  sorted_string
end

# Example usage
s = "tree"
sorted_string = frequency_sort(s)
puts sorted_string  # Output: "eert"

s = "cccaaa"
sorted_string = frequency_sort(s)
puts sorted_string  # Output: "aaaccc"

s = "Aabb"
sorted_string = frequency_sort(s)
puts sorted_string  # Output: "bbAa"
# @lc code=end
