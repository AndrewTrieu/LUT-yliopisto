def hash(S, size):
    num = 0
    for i in range(0, len(S)):
        num += ord(S[i])
    return num % size

# Hash table with linear probing


class HashLinear:
    def __init__(self, num):
        self.table = ["DELETED"] * num
        self.size = 0
        self.num = num

    def insert(self, S):
        if self.search(S):
            return False
        h = hash(S, self.num)
        while self.table[h] != "DELETED" and self.table[h] != None:
            h = (h + 1) % self.num
        self.table[h] = S
        self.size += 1
        return True

    def search(self, S):
        h = hash(S, self.num)
        while self.table[h] != "DELETED":
            if self.table[h] == S:
                return True
            h = (h + 1) % self.num
        return False

    def find(self, S):
        h = hash(S, self.num)
        while self.table[h] != "DELETED":
            if self.table[h] == S:
                return h
            h = (h + 1) % self.num
        return -1

    def delete(self, S):
        if not self.search(S):
            return False
        h = hash(S, self.num)
        if self.table[h] != S:
            while self.table[h] != S:
                h = (h + 1) % self.num
        self.table[h] = "DELETED"
        self.table[h] = None
        self.size -= 1
        return True

    def print(self):
        for i in range(0, self.num):
            if self.table[i] != "DELETED" and self.table[i] != None:
                #print(i, self.table[i])
                print(self.table[i], end=' ')
        print()

    def __str__(self):
        return str(self.table)


if __name__ == "__main__":
    table = HashLinear(20)
    a = ["town", "rather", "short", "toward", "employee", "player", "toward", "the", "of", "college",
         "in", "yes", "billion", "five", "wear", "last", "decade", "first", "training", "friend"]
    for i in a:
        table.insert(i)
    b = ["employee", "of", "toward", "in", "player",
         "town", "toward", "five", "rather", "yes"]
    for i in b:
        table.delete(i)
    table.print()
