class AVLNode:
    # Constructor for new node
    def __init__(self, key: int):
        self.key = key
        self.left = None
        self.right = None
        self.balance = 0


class AVL:

    # Constructor for new AVL
    def __init__(self):
        self.root = None
        self.is_balanced = True

    # Inserts a new key to the search tree
    def insert(self, key):
        self.root = self.insert_help(self.root, key)

    # Help function for insert
    def insert_help(self, root, key):
        if not root:
            root = AVLNode(key)
            self.is_balanced = False
        elif key < root.key:
            root.left = self.insert_help(root.left, key)
            if not self.is_balanced:                           # Check for possible rotations
                if root.balance >= 0:                       # No Rotations needed, update balance variables
                    self.is_balanced = root.balance == 1
                    root.balance -= 1
                # Rotation(s) needed
                else:
                    if root.left.balance == -1:
                        root = self.right_rotation(root)    # Single rotation
                    else:
                        root = self.left_right_rotation(
                            root)   # Double rotation
                    self.is_balanced = True
        elif key > root.key:
            root.right = self.insert_help(root.right, key)
            if not self.is_balanced:                           # Check for possible rotations
                if root.balance <= 0:                       # No Rotations needed, update balance variables
                    self.is_balanced = root.balance == -1
                    root.balance += 1
                # Rotation(s) needed
                else:
                    if root.right.balance == 1:
                        root = self.left_rotation(root)
                    else:
                        root = self.right_left_rotation(root)
                    self.is_balanced = True
        return root

    # Single rotation: right rotation around root
    def right_rotation(self, root):
        child = root.left                   # Set variable for child node
        root.left = child.right             # Rotate
        child.right = root
        child.balance = root.balance = 0    # Fix balance variables
        return child

    # Single rotation: left rotation around root
    def left_rotation(self, root):
        child = root.right                  # Set variable for child node
        root.right = child.left             # Rotate
        child.left = root
        child.balance = root.balance = 0    # Fix balance variables
        return child

    # Double rotation: left rotation around child node followed by right rotation around root
    def left_right_rotation(self, root):
        child = root.left
        # Set variables for child node and grandchild node
        grandchild = child.right
        child.right = grandchild.left       # Rotate
        grandchild.left = child
        root.left = grandchild.right
        grandchild.right = root
        root.balance = child.balance = 0    # Fix balance variables
        if grandchild.balance == -1:
            root.balance = 1
        elif grandchild.balance == 1:
            child.balance = -1
        grandchild.balance = 0
        return grandchild

    # Double rotation: right rotation around child node followed by left rotation around root
    def right_left_rotation(self, root):
        child = root.right
        # Set variables for child node and grandchild node
        grandchild = child.left
        child.left = grandchild.right       # Rotate
        grandchild.right = child
        root.right = grandchild.left
        grandchild.left = root
        root.balance = child.balance = 0    # Fix balance variables
        if grandchild.balance == 1:
            root.balance = -1
        elif grandchild.balance == -1:
            child.balance = 1
        grandchild.balance = 0
        return grandchild

    def preorder(self):
        print(self.preorder_help(self.root))

    def preorder_help(self, root):
        if not root:
            return ''
        return str(root.key) + ';' + str(root.balance) + ' ' + self.preorder_help(root.left) + self.preorder_help(root.right)

    # Returns the height of the tree
    def height(self):
        return self.height_help(self.root)

    def height_help(self, root):
        if not root:
            return 0
        return 1 + max(self.height_help(root.left), self.height_help(root.right))


if __name__ == "__main__":
    # Make a list from 5 19 3 9 4 16 13 8 14 11 7 17 2 15 1 10 6 12 20 18
    Tree = AVL()
    for key in [5, 19, 3, 9, 4, 16, 13, 8, 14, 11, 7, 17, 2, 15, 1, 10, 6, 12, 20, 18]:
        Tree.insert(key)
    Tree.preorder()
