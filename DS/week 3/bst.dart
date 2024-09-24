void main() {
  BinarySearch bst = BinarySearch();
  bst.root = bst.insert(bst.root, 15);
  bst.root = bst.insert(bst.root, 8);
  bst.root = bst.insert(bst.root, 18);
  bst.root = bst.insert(bst.root, 25);
  bst.root = bst.insert(bst.root, 4);
  bst.root = bst.insert(bst.root, 7);
  bst.root = bst.insert(bst.root, 10);
  bst.root = bst.delete(bst.root, 8);
  bst.preorder(bst.root);

  print('post order');
  bst.postorder(bst.root);
  print('in order');
  bst.inorder(bst.root);

  print('contains :${bst.contains(bst.root, 111)}');
  print('min val :${bst.findmin(bst.root)}');
  print('find amx :${bst.fintmax(bst.root)}');

  print('count : ${bst.count(bst.root)}');

  print('hight : ${bst.height(bst.root)}');
}

class Node {
  int? value;
  Node? left;
  Node? right;
  Node(this.value);
}

class BinarySearch {
  Node? root;

  Node? insert(Node? root, int value) {
    if (root == null) {
      return Node(value);
    }

    if (value < root.value!) {
      root.left = insert(root.left, value);
    } else if (value > root.value!) {
      root.right = insert(root.right, value);
    }
    return root;
  }

  Node? delete(Node? root, int value) {
    if (root == null) {
      return root;
    }

    if (value < root.value!) {
      root.left = delete(root.left, value);
    } else if (value > root.value!) {
      root.right = delete(root.right, value);
    } else {
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }

      root.value = findmin(root.right);
      root.right = delete(root.right, root.value!);
    }
    return root;
  }

  int count(Node? root) {
    if (root == null) {
      return 0;
    }
    return 1 + count(root.left) + count(root.right);
  }

  void postorder(Node? root) {
    if (root == null) {
      return;
    }
    postorder(root.left);
    postorder(root.right);
    print(root.value);
  }

  void preorder(Node? root) {
    if (root == null) {
      return;
    }

    print(root.value);
    preorder(root.left);
    preorder(root.right);
  }

  fintmax(Node? root) {
    int? max = root!.value!;
    while (root!.right != null) {
      max = root.right!.value;
      root = root.right;
    }
    return max;
  }

  contains(Node? root, int value) {
    if (root == null) {
      return false;
    }

    if (root.value == value) {
      return value;
    } else if (value < root.value!) {
      return contains(root.left, value);
    } else if (value > root.value!) {
      return contains(root.right, value);
    }
  }

  inorder(Node? root) {
    if (root == null) {
      return;
    }

    inorder(root.left);
    print(root.value);
    inorder(root.right);
  }

  int findmin(Node? root) {
    int min = root!.value!;
    while (root!.left != null) {
      min = root.left!.value!;
      root = root.left;
    }
    return min;
  }

   height(Node? root){
    if (root==null) {
      return 0;
    }
    else{
      int lefthight =height(root.left);
      int righthight =height(root.right);
      

      return (lefthight>righthight) ? (lefthight+1):(righthight+1);

    }

    

  }
}