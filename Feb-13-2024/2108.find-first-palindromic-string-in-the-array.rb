#
# @lc app=leetcode id=2108 lang=ruby
#
# [2108] Find First Palindromic String in the Array
#

# @lc code=start
# @param {String[]} words
# @return {String}
def first_palindrome(words)
  words.each do |word|
    return word if word == word.reverse
  end
  ""
end

# Example usage
words = ["abc", "car", "ada", "racecar", "cool"]
result = first_palindrome(words)
puts result  # Output: "ada"

words = ["notapalindrome", "racecar"]
result = first_palindrome(words)
puts result  # Output: "racecar"

words = ["def", "ghi"]
result = first_palindrome(words)
puts result  # Output: ""
# @lc code=end
