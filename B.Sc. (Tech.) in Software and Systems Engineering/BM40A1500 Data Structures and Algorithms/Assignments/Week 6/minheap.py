class MinHeap:
    def __init__(self):
        self.heap = []

    def push(self, key):
        self.heap.append(key)
        self.bubble_up(len(self.heap) - 1)

    def bubble_up(self, index):
        if index == 0:
            return
        parent = (index - 1) // 2
        if self.heap[parent] > self.heap[index]:
            self.heap[parent], self.heap[index] = self.heap[index], self.heap[parent]
            self.bubble_up(parent)

    def pop(self):
        if len(self.heap) == 0:
            return None
        if len(self.heap) == 1:
            return self.heap.pop()
        self.heap[0], self.heap[-1] = self.heap[-1], self.heap[0]
        min = self.heap.pop()
        self.bubble_down(0)
        return min

    def bubble_down(self, index):
        left = 2 * index + 1
        right = 2 * index + 2
        smallest = index
        if left < len(self.heap) and self.heap[left] < self.heap[smallest]:
            smallest = left
        if right < len(self.heap) and self.heap[right] < self.heap[smallest]:
            smallest = right
        if smallest != index:
            self.heap[smallest], self.heap[index] = self.heap[index], self.heap[smallest]
            self.bubble_down(smallest)

    def print(self):
        print(' '.join(map(str, self.heap)))


if __name__ == "__main__":
    items = [4, 8, 6, 5, 1, 2, 3]
    heap = MinHeap()
    [heap.push(key) for key in items]
    heap.print()        # 1 4 2 8 5 6 3
    print(heap.pop())   # 1
    heap.print()        # 2 4 3 8 5 6
