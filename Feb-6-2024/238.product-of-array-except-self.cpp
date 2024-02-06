/*
 * @lc app=leetcode id=238 lang=cpp
 *
 * [238] Product of Array Except Self
 */

// @lc code=start

class Solution {
public:
    vector<int> productExceptSelf(vector<int>& nums) {
        int n = nums.size();
    std::vector<int> output(n, 1);  // Initialize output array with 1s

    // Calculate prefix product from left to right
    int prefix = 1;
    for (int i = 0; i < n; i++) {
        output[i] *= prefix;
        prefix *= nums[i];
    }

    // Calculate suffix product from right to left, directly modifying output
    int suffix = 1;
    for (int i = n - 1; i >= 0; i--) {
        output[i] *= suffix;
        suffix *= nums[i];
    }

    return output;
}
    
};
// @lc code=end

