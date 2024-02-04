/*
 * @lc app=leetcode id=1 lang=cpp
 *
 * [1] Two Sum
 */

// @lc code=start
class Solution {
public:
vector<int> twoSum(vector<int>& nums, int target) {
    unordered_map<int, int> seen;
    for (int i = 0; i < nums.size(); i++) {
        int complement = target - nums[i];
        if (seen.count(complement)) {
            return {seen[complement], i};
        }
        seen[nums[i]] = i;
    }
    throw invalid_argument("No two sum solution");
}

int main() {
    vector<int> nums = {2, 7, 11, 15};
    int target = 9;
    vector<int> indices = twoSum(nums, target);
    cout << "Indices: " << indices[0] << ", " << indices[1] << endl;
    return 0;
}
};
// @lc code=end

