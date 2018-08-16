// Reverse Linked List

// Reverse a singly linked list.

// Example:

// Input: 1->2->3->4->5->NULL
// Output: 5->4->3->2->1->NULL
// Follow up:

// A linked list can be reversed either iteratively or recursively. Could you implement both?


/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    ListNode* reverseList(ListNode* head) {    
//         ListNode* cur = head;
//         ListNode* pre = NULL;
//         while (cur) {
//             ListNode* nextTemp = cur->next;
//             cur->next = pre;
//             pre = cur;
//             cur = nextTemp;
//         }
        
//         return pre;
        
        if (head == NULL || head->next == NULL)  { return head; }
        ListNode* p = reverseList(head->next);
        head->next->next = head;
        head->next = NULL;
        return p;
    }
};