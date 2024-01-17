def hash(S, size):
    num = 0
    for i in range(0, len(S)):
        num += ord(S[i])
    return num % size

# Hash table with bucket hashing and overflow array
#  Class HashBucket which has the table size M and number of equal sized buckets B as the input values when a object is created. Size of one bucket is M/B. The hash table has a overflow array of size M.


class HashBucket:
    def __init__(self, M, B):
        self.M = M
        self.B = B
        self.table = [[] for i in range(0, M)]
        self.overflow = []

    # No duplicate strings are allowed
    def insert(self, S):
        h = hash(S, self.B)
        if S in self.table[h]:
            return
        elif S in self.overflow:
            return
        elif len(self.table[h]) < self.M / self.B:
            self.table[h].append(S)
        else:
            self.overflow.append(S)

    def search(self, S):
        h = hash(S, self.B)
        if S in self.table[h]:
            return True
        elif S in self.overflow:
            return True
        else:
            return False

    def delete(self, S):
        h = hash(S, self.B)
        if S in self.table[h]:
            self.table[h].remove(S)
        elif S in self.overflow:
            self.overflow.remove(S)
        else:
            print("String not found")

    def print(self):
        for i in range(0, self.M):
            for j in range(0, len(self.table[i])):
                print(self.table[i][j], end=' ')
        for z in range(0, len(self.overflow)):
            print(self.overflow[z], end=' ')
        print()


# Main program
if __name__ == "__main__":
    table = HashBucket(20, 4)
    a = ["door", "billion", "how", "choice", "at", "husband", "truth", "song", "share", "develop", "Mr", "everybody", "common", "blood", "Democrat", "until", "stock", "southern", "song", "cover"
         ]
    for i in a:
        table.insert(i)
    table.print()
    b = ["song", "develop", "choice", "common", "until", "how", "billion", "blood", "door", "truth"
         ]
    for i in b:
        table.delete(i)
    table.print()
    table = HashBucket(8, 4)
    a = ["dinner", "while", "call", "relate",
         "be", "easy", "yourself", "decide"]
    for i in a:
        table.insert(i)
    table.print()
    b = ["relate", "call", "decide", "while"]
    for i in b:
        table.delete(i)
    table.print()
