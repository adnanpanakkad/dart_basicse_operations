class Node {
  int? data;
  Node? left;
  Node? rigt;
  Node(this.data);
}

class Bst {
  Node? root;
  insert(Node? root, int? data) {
    if (root == null) {
      return Node(data);
    }
    if (data! < root.data!) {
      root.left = insert(root.left, data);
    } else if (data > root.data!) {
      root.rigt = insert(root.rigt, data);
    }
    return root;
  }

  preorder(Node? root) {
    if (root == null) {
      return 0;
    }
    print(root.data);
    preorder(root.left);
    preorder(root.rigt);
  }

  height(Node? root) {
    if (root == null) {
      return 0;
    } else {
      int leftheight = height(root.left);
      int rightheight = height(root.rigt);
      return (leftheight > rightheight) ? (leftheight + 1) : (rightheight + 1);
    }
  }
}

void main() {
  Bst bst = Bst();
  bst.root = bst.insert(bst.root, 12);
  bst.root = bst.insert(bst.root, 23);
  bst.root = bst.insert(bst.root, 54);
  bst.root = bst.insert(bst.root, 76);
  bst.root = bst.insert(bst.root, 98);
  bst.preorder(bst.root);
  print('height of the tree is');
  print(bst.height(bst.root));
}
