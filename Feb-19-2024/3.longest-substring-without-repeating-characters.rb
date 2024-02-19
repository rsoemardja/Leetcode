#
# @lc app=leetcode id=3 lang=ruby
#
# [3] Longest Substring Without Repeating Characters
#

# @lc code=start
# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
  # find the length of longest substring without repeating chars
  max_substring_length = this_substring_length = start = last = 0
  visited = {}

  while last < s.length
      # if we have already visited this character
      # it is clash
      # increment the start pointer by this, because we can safely
      # ignore chars before this
      char_at_last = s[last]
      # if we have already seen this char and it is between the range of start..last.. there's clash
      if visited.key?(char_at_last) && (start..last).member?(visited[char_at_last])
          start = visited[char_at_last] + 1
          # update in map the latest index of same char
          visited[char_at_last] = last
      else
          # store index of char_at_last
          visited[char_at_last] = last
      end

      this_substring_length = last - start + 1
      max_substring_length = this_substring_length if this_substring_length > max_substring_length
      last += 1
  end

  max_substring_length
end
# @lc code=end
