/*
 * @lc app=leetcode id=1043 lang=cpp
 *
 * [1043] Partition Array for Maximum Sum
 */

// @lc code=start
class Solution {
public:
int maxSumAfterPartitioning(vector<int>& arr, int k) {
    int n = arr.size();
    vector<int> dp(n + 1, 0);  // DP table to store maximum sums

    for (int i = 1; i <= n; i++) {
        int maxVal = arr[i - 1];  // Initialize maximum value in current subarray
        for (int j = 1; j <= min(i, k); j++) {
            // Update maximum value in current subarray
            maxVal = max(maxVal, arr[i - j]);
            // Calculate sum of current subarray if all elements are replaced with maxVal
            int currentSum = maxVal * j + dp[i - j];
            // Update dp[i] with the maximum possible sum ending at index i
            dp[i] = max(dp[i], currentSum);
        }
    }

    return dp[n];  // The largest sum after partitioning is stored in dp[n]
}
};
// @lc code=end

