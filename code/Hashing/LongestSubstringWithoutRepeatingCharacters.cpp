// Longest Substring Without Repeating Characters

// Given a string, find the length of the longest substring without repeating characters.

// Examples:

// Given "abcabcbb", the answer is "abc", which the length is 3.

// Given "bbbbb", the answer is "b", with the length of 1.

// Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.


class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        map<char, int>map;
        int i = 0;
        int j = 0;
        int ans = 0;

        for (int i = 0, j = 0; j < s.size(); j++) {
            if(map.count(s[j]) > 0) {
                i = max(map[s[j]], i);
            }
            ans = max(ans, j - i + 1);
            map[s[j]] = j + 1;
        }
        
        return ans;
    }
};
