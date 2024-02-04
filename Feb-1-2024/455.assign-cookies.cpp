/*
 * @lc app=leetcode id=455 lang=cpp
 *
 * [455] Assign Cookies
 */

// @lc code=start
#include <vector>
class Solution {
public:
    int findContentChildren(vector<int>& g, vector<int>& s) {
        // Sort children and cookies

        // Greedy
        sort(g.begin(), g.end());
        // Size of cookies
        sort(s.begin(), s.end());

        // counter for children and cookies
        // index for children and cookies
        int contentChildren = 0;

        // Iterate through children and cookies
        int childIndex = 0;

        // Iterate through cookies
        int cookieIndex = 0;

        // Iterate through children and cookies remaining
        while (childIndex < g.size() && cookieIndex < s.size()) {
            // If the cookie is greater than or equal to the child
            if (s[cookieIndex] >= g[childIndex]) {
                // Increment the content children
                contentChildren++;
                childIndex++;
            }
            cookieIndex++; // Increment the cookie index
        }
        return contentChildren;
    }
};
// @lc code=end

