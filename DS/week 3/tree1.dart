import 'dart:io';

class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}
//its a binary search tree
//which is its left child will be lesser than the parent and right child will be larger than the parent

class Tree {
  Node? root;
  Tree();

//insertion
  void insert(int value) {
    root = insertRec(root, value);
  }

  Node insertRec(Node? node, int data) {
    if (node == null) {
      node = Node(data);
      return node;
    }

    if (data < node.data) {
      node.left = insertRec(node.left, data);
    } else if (data > node.data) {
      node.right = insertRec(node.right, data);
    }

    return node;
  }

//inorder traversal

  void inorder_traversal(Node? node) {
    if (node != null) {
      inorder_traversal(node.left);
      stdout.write('${node.data},');
      inorder_traversal(node.right);
    }
  }

  //preorder traversal
  void preorder_traversal(Node? node) {
    if (node != null) {
      stdout.write('${node.data} ');
      preorder_traversal(node.left);
      preorder_traversal(node.right);
    }
  }

  //postorder traversal
  void postorder_traversal(Node? node) {
    if (node != null) {
      preorder_traversal(node.left);
      preorder_traversal(node.right);
      stdout.write('${node.data} ');
    }
  }

  //deletion in tree

  delete(Node? node, int value) {
    if (node == null) {
      print('root is null');
      return node;
    } else {
      if (value < node.data) {
        node.left = delete(node.left, value);
      } else if (value > node.data) {
        node.right = delete(node.right, value);
      } else {
        if (node.left == null) {
          return node.right;
        } else if (node.right == null) {
          return node.left;
        }
        node.data = findMinNode(node.right).data;
        node.right = delete(node.right, node.data);
      }
    }
    return node;
  }

//to find the closest value to the target value
  closesthelper(int target) {
    var close = closestVal(root, target, root!.data);
    print('');
    if (close != 0) print('closest : $close');
  }

  int closestVal(Node? node, int target, int closest) {
    if (node != null) {
      if ((target - node.data).abs() < (closest - target).abs()) {
        closest = node.data;
      }
      closest = closestVal(node.left, target, closest);
      closest = closestVal(node.right, target, closest);
    }

    return closest;
  }

  bstornothelper() {
    if (bstornot(root, true))
      print('its a bst');
    else
      print('its not a bst');
  }

  bool bstornot(Node? node, bool bst) {
    if (bst) {
      if (node != null) {
        if (node.right != null) {
          bst = bstornot(node.right, bst);
          if (bst) bst = node.right!.data > node.data;
        }
        if (node.left != null) {
          bst = bstornot(node.left, bst);
          if (bst) bst = node.left!.data < node.data;
        }
      }
    }
    return bst;
  }

//to find the min value inside a tree
  findMinNode(root) {
    while (root.left != null) {
      root = root.left;
    }
    return root;
  }
}

void main() {
  Tree tree = Tree();
  tree.insert(12);
  tree.insert(15);
  tree.insert(14);
  tree.postorder_traversal(tree.root);
}
