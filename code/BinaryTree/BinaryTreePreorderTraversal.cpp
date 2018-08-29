//Binary Tree Preorder Traversal

//Given a binary tree, return the preorder traversal of its nodes' values.
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
//Output: [1,2,3]

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
	//solution one 
    vector<int> preorderTraversal(TreeNode *root) {
        vector<int> res;
        if(root==NULL)
            return res;
        
        stack<TreeNode*> stack_pre;
        stack_pre.push(root);
        while(!stack_pre.empty()){
            TreeNode* top_node=stack_pre.top();
            res.push_back(top_node->val);
            stack_pre.pop();
            if(top_node->right!=NULL)
                stack_pre.push(top_node->right);
            if(top_node->left!=NULL)
                stack_pre.push(top_node->left);
        }
        return res;
    }

    //solution two
    vector<int> preorderTraversal(TreeNode* root) {
    	vector<int> res;
        preOrder(root, res);
        return res;
    }

    void preOrder(TreeNode* root, vector<int>& res) {
    	if(!root) return;
    	res.push_back(root->val);
        
    	if(root->left) {
    		preOrder(root->left, res);
    	}
        if(root->right) {
    		preOrder(root->right, res);
    	}
    }
};
