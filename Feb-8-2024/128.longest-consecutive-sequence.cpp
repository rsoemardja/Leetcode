/*
 * @lc app=leetcode id=128 lang=cpp
 *
 * [128] Longest Consecutive Sequence
 */

// @lc code=start
class Solution {
public:
    int longestConsecutive(vector<int>& nums) {
        unordered_set<int> numSet(nums.begin(), nums.end());
        int longest = 0;

        for (int num : numSet) {
            // Skip if not the beginning of a potential sequence
            if (numSet.count(num - 1) == 0) {
                int currentLength = 1;
                while (numSet.count(num + currentLength)) {
                    currentLength++;
                }
                longest = max(longest, currentLength);
            }
        }

        return longest;
    }
};
// @lc code=end

