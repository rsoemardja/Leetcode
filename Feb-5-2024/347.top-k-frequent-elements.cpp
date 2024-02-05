/*
 * @lc app=leetcode id=347 lang=cpp
 *
 * [347] Top K Frequent Elements
 */

// @lc code=start
class Solution {
public:
    vector<int> topKFrequent(vector<int>& nums, int k) {
    // Count the frequency of each element
    unordered_map<int, int> freq;
    for (int num : nums) {
        freq[num]++;
    }

    // Create a min-heap to store the k most frequent elements
    priority_queue<pair<int, int>, vector<pair<int, int>>, greater<pair<int, int>>> heap;
    for (auto it : freq) {
        if (heap.size() < k) {
            heap.push({it.second, it.first});
        } else if (it.second > heap.top().first) {
            heap.pop();
            heap.push({it.second, it.first});
        }
    }

    // Extract the k most frequent elements from the heap
    vector<int> result;
    while (!heap.empty()) {
        result.push_back(heap.top().second);
        heap.pop();
    }

    return result;
}

int main() {
    vector<int> nums = {1, 1, 1, 2, 2, 3};
    int k = 2;
    vector<int> result = topKFrequent(nums, k);

    for (int num : result) {
        cout << num << " ";
    }
    cout << endl;

    return 0;
}
};
// @lc code=end

