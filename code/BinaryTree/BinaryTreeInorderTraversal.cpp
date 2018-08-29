//Binary Tree Inorder Traversal

//Given a binary tree, return the inorder traversal of its nodes' values.
//
//Example:
//
//Input: [1,null,2,3]
//1
//\
//2
///
//3
//
//Output: [1,3,2]


/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode(int x) : val(x), left(NULL), right(NULL) {}
 * };
 */
class Solution {
public:
    vector<int> inorderTraversal(TreeNode* root) {
        vector<int> res;
        inOrder(root, res);
        return res;
    }
    
    void inOrder(TreeNode* root, vector<int>& res) {
    	if(!root) return;
        
    	if(root->left) {
    		inOrder(root->left, res);
    	}
        res.push_back(root->val);
        if(root->right) {
    		inOrder(root->right, res);
    	}
    }
};


