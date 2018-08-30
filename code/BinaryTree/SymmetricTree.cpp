// Symmetric Tree

// Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

// For example, this binary tree is symmetric:

//     1
//    / \
//   2   2
//  / \ / \
// 3  4 4  3
 

// But the following is not:

//     1
//    / \
//   2   2
//    \   \
//    3    3

/**
 * Definition for binary tree
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 * };
 */

//solution one
class Solution {
public:
    bool isSymmetric(TreeNode *root) {
        if(!root) return true;
        return compRoot(root -> left, root -> right);
    }
private:
    bool compRoot(TreeNode* lroot, TreeNode* rroot){
        if(!lroot) return (NULL == rroot);
        if(NULL == rroot) return false;
        if(lroot -> val != rroot -> val) return false;
        return (compRoot(lroot -> left, rroot -> right) && compRoot(lroot -> right, rroot -> left));
    }
};


//solution two
class Solution {
public:
    bool isSymmetric(TreeNode *root) {
        if(!root) return true;
        if(!root -> left && !root -> right) return true;
        if( (!root -> left && root -> right) || (root -> left && !root -> right) ) return false;
        deque<TreeNode*> dq;
        dq.push_front(root -> left);
        dq.push_back(root -> right);
        while(!dq.empty()){
            TreeNode* lroot = dq.front();
            TreeNode* rroot = dq.back();
            dq.pop_front();
            dq.pop_back();
            if(lroot -> val != rroot -> val) return false;
            if( (!lroot -> right && rroot -> left) || (lroot -> right && !rroot -> left) ) return false;
            if(lroot -> right){
                dq.push_front(lroot -> right);
                dq.push_back(rroot -> left);
            }
            if( (!lroot -> left && rroot -> right) || (lroot -> left && !rroot -> right) ) return false;
            if(lroot -> left){
                dq.push_front(lroot -> left);
                dq.push_back(rroot -> right);
            }
        }
        return true;
    }
};