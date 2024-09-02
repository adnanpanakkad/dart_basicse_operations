// // import 'dart:collection';

// // //Binary Tree Level Order Traversal

// // class TreeNode {
// //   int val;
// //   TreeNode? left;
// //   TreeNode? right;

// //   TreeNode(this.val);
// // }

// // List<List<int>> levelOrder(TreeNode root) {
// //   List<List<int>> result = [];
// //   if (root == null) return result;

// //   Queue<TreeNode?> queue = Queue();
// //   queue.add(root);

// //   while (queue.isNotEmpty) {
// //     int levelSize = queue.length;
// //     List<int> currentLevel = [];

// //     for (int i = 0; i < levelSize; i++) {
// //       TreeNode? node = queue.removeFirst();
// //       currentLevel.add(node!.val);

// //       if (node.left != null) queue.add(node.left);
// //       if (node.right != null) queue.add(node.right);
// //     }

// //     result.add(currentLevel);
// //   }

// //   return result;
// // }

//   //  Maximum Depth of Binary Tree:

// import 'dart:math';

// class TreeNode {
//   int val;
//   TreeNode? left;
//   TreeNode? right;

//   TreeNode(this.val, {this.left, this.right});
// }

// int maxDepth(TreeNode? root) {
//   if (root == null) return 0;

//   int leftDepth = maxDepth(root.left);
//   int rightDepth = maxDepth(root.right);

//   return 1 + max(leftDepth, rightDepth);
// }

//   Validate Binary Search Tree:

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, {this.left, this.right});
}

bool isValidBST(TreeNode root) {
  return isValidBSTHelper(root, null, null);
}

bool isValidBSTHelper(TreeNode? node, int? minVal, int? maxVal) {
  if (node == null) return true;

  if ((minVal != null && node.val <= minVal) ||
      (maxVal != null && node.val >= maxVal)) {
    return false;
  }

  return isValidBSTHelper(node.left, minVal, node.val) &&
      isValidBSTHelper(node.right, node.val, maxVal);
}