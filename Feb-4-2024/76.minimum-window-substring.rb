#
# @lc app=leetcode id=76 lang=ruby
#
# [76] Minimum Window Substring
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {String}
def min_window(s, t)
    t_counts = Hash.new(0)
    t.each_char { |char| t_counts[char] += 1 }

    left, right = 0, 0  # Initialize two pointers
    min_window = ""
    min_window_length = Float::INFINITY
    required_characters = t_counts.size

    while right < s.length
      current_char = s[right]

      if t_counts.key?(current_char)
        t_counts[current_char] -= 1
        if t_counts[current_char] == 0
          required_characters -= 1
        end
      end

      # Contract the window while required_characters == 0
      while required_characters == 0
        current_window_length = right - left + 1
        if current_window_length < min_window_length
          min_window_length = current_window_length
          min_window = s[left..right]
        end

        left_char = s[left]
        if t_counts.key?(left_char)
          t_counts[left_char] += 1
          if t_counts[left_char] > 0
            required_characters += 1
          end
        end
        left += 1
      end

      right += 1  # Move the right pointer to expand the window
    end

    return min_window  # Return the found minimum window substring
  end
# @lc code=end
