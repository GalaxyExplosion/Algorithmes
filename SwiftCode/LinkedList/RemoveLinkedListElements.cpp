// Remove Linked List Elements

// Remove all elements from a linked list of integers that have value val.

// Example:

// Input:  1->2->6->3->4->5->6, val = 6
// Output: 1->2->3->4->5


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
    ListNode* removeElements(ListNode* head, int val) {
        if (head == NULL) {
            return NULL;
        }
        head->next = removeElements(head->next, val);
        return head->val == val ? head->next : head;
        
//         if (head == NULL) {
//             return NULL;
//         }
        
//         ListNode* cur = head;
//         while(cur->next) {
//             if (cur->next->val == val) {
//                 cur->next = cur->next->next;
//             } else {
//                 cur = cur->next;
//             }
//         }
//         return head->val == val ? head->next : head;
    }
};