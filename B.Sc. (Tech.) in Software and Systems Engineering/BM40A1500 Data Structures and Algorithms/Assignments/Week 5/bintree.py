class Node:
    def __init__(self, key):
        self.key = key
        self.left = None
        self.right = None


class BST:
    def __init__(self):
        self.root = None

    def insert(self, key):
        if self.root is None:
            self.root = Node(key)
        else:
            self._insert(self.root, key)

    def _insert(self, node, key):
        if key < node.key:
            if node.left is None:
                node.left = Node(key)
            else:
                self._insert(node.left, key)
        elif key > node.key:
            if node.right is None:
                node.right = Node(key)
            else:
                self._insert(node.right, key)

    def search(self, key):
        if self.root is None:
            return False
        else:
            return self._search(self.root, key)

    def _search(self, node, key):
        if node is None:
            return False
        elif node.key == key:
            return True
        elif key < node.key:
            return self._search(node.left, key)
        else:
            return self._search(node.right, key)

    def preorder(self):
        if self.root is None:
            return
        else:
            self._preorder(self.root)
        print()

    def _preorder(self, node):
        if node is None:
            return
        print(node.key, end=" ")
        self._preorder(node.left)
        self._preorder(node.right)

    def breadthfirst(self):
        if self.root is None:
            return
        else:
            self._breadthfirst(self.root)
        print()

    def _breadthfirst(self, node):
        if node is None:
            return
        queue = []
        queue.append(node)
        while len(queue) > 0:
            print(queue[0].key, end=" ")
            node = queue.pop(0)
            if node.left is not None:
                queue.append(node.left)
            if node.right is not None:
                queue.append(node.right)

    def remove(self, key):
        if self.root is None:
            return
        else:
            self._remove(self.root, key)

    def _remove(self, node, key):
        if node is None:
            return node
        if key < node.key:
            node.left = self._remove(node.left, key)
        elif key > node.key:
            node.right = self._remove(node.right, key)
        else:
            if node.left is None:
                temp = node.right
                node = None
                return temp
            elif node.right is None:
                temp = node.left
                node = None
                return temp
            temp = self._minValueNode(node.right)
            node.key = temp.key
            node.right = self._remove(node.right, temp.key)
        return node

    def _minValueNode(self, node):
        if node is None:
            return node
        while node.left is not None:
            node = node.left
        return node


if __name__ == "__main__":
    Tree = BST()
    keys = [5, 9, 1, 3, 7, 4, 6, 2]
    for key in keys:
        Tree.insert(key)

    Tree.preorder()         # 5 1 3 2 4 9 7 6
    Tree.breadthfirst()    # 5 1 9 3 7 2 4 6
