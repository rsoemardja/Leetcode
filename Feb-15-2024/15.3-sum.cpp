/*
 * @lc app=leetcode id=15 lang=cpp
 *
 * [15] 3Sum
 */

// @lc code=start
class Solution {
public:
    vector<vector<int>> threeSum(vector<int>& nums) {
        vector<vector<int>> result;

        // Sort the array for efficient two-pointer approach
        sort(nums.begin(), nums.end());

        // Iterate through the array, fixing the first element of each triplet
        for (int i = 0; i < nums.size() - 2; ++i) {
            // Skip duplicates of the first element to avoid redundant triplets
            if (i > 0 && nums[i] == nums[i - 1]) {
                continue;
            }

            // Use two pointers to find pairs that sum to -nums[i]
            int left = i + 1, right = nums.size() - 1;
            while (left < right) {
                int sum = nums[i] + nums[left] + nums[right];
                if (sum == 0) {
                    result.push_back({nums[i], nums[left], nums[right]});
                    // Move pointers to find other possible pairs while avoiding duplicates
                    left++;
                    right--;
                    while (left < right && nums[left] == nums[left - 1]) {
                        left++;
                    }
                    while (left < right && nums[right] == nums[right + 1]) {
                        right--;
                    }
                } else if (sum < 0) {
                    left++; // Increase sum by moving left pointer
                } else {
                    right--; // Decrease sum by moving right pointer
                }
            }
        }
        return result;
    }
};
// @lc code=end

