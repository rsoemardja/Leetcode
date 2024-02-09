/*
 * @lc app=leetcode id=125 lang=javascript
 *
 * [125] Valid Palindrome
 */

// @lc code=start
/**
 * @param {string} s
 * @return {boolean}
 */
var isPalindrome = function(s) {
    // Convert to lowercase and remove non-alphanumeric characters
    const sanitized = s.toLowerCase().replace(/[^a-z0-9]/g, "");
  
    // Use two pointers to compare characters from both ends
    let left = 0;
    let right = sanitized.length - 1;
  
    while (left < right) {
      if (sanitized[left] !== sanitized[right]) {
        return false; // Not a palindrome
      }
      left++;
      right--;
    }
  
    return true; // Palindrome
  };
  
  // Example usage:
  console.log(isPalindrome("A man, a plan, a canal: Panama"));   // true
  console.log(isPalindrome("race a car"));                        // false
  console.log(isPalindrome(" "));                                   // true
  console.log(isPalindrome("hello"));                           // false (odd length, last character doesn't match itself)
  console.log(isPalindrome("12321"));                           // true (numbers are also considered alphanumeric)
  
// @lc code=end

