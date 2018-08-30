// Maximum Depth of Binary Tree

// Given a binary tree, find its maximum depth.

// The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

// Note: A leaf is a node with no children.

// Example:

// Given binary tree [3,9,20,null,null,15,7],

//     3
//    / \
//   9  20
//     /  \
//    15   7
// return its depth = 3.


//solution one
int answer;       
     // don't forget to initialize answer before call maximum_depth
void maximum_depth(TreeNode* root, int depth) {
    if (!root) {
        return;
    }
    if (!root->left && !root->right) {
        answer = max(answer, depth);
    }
    maximum_depth(root->left, depth + 1);
    maximum_depth(root->right, depth + 1);
}

//solution two
int maximum_depth(TreeNode* root) {
    if (!root) {
        return 0;                                 // return 0 for null node
    }
    int left_depth = maximum_depth(root->left); 
    int right_depth = maximum_depth(root->right);
    return max(left_depth, right_depth) + 1;      // return depth of the subtree rooted at root
}