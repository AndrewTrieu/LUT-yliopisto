class Graph:
    def __init__(self, adj_matrix):
        self.adj_matrix = adj_matrix
        self.V = len(adj_matrix)

    def df_print(self, start):
        visited = [False] * self.V
        self.dfs(start, visited)
        print()

    def dfs(self, start, visited):
        visited[start] = True
        print(start, end=' ')
        for i in range(self.V):
            if self.adj_matrix[start][i] > 0 and not visited[i]:
                self.dfs(i, visited)

    def bf_print(self, start):
        visited = [False] * self.V
        queue = []
        queue.append(start)
        visited[start] = True
        while queue:
            start = queue.pop(0)
            print(start, end=' ')
            for i in range(self.V):
                if self.adj_matrix[start][i] > 0 and not visited[i]:
                    queue.append(i)
                    visited[i] = True
        print()

    def weight(self, vertex1, vertex2):
        return self.adj_matrix[vertex1][vertex2] if self.adj_matrix[vertex1][vertex2] > 0 else -1


if __name__ == "__main__":

    matrix = [
        #    0  1  2  3  4  5
        [0, 0, 7, 0, 9, 0],  # 0
        [0, 0, 0, 0, 0, 0],  # 1
        [0, 5, 0, 1, 0, 2],  # 2
        [6, 0, 0, 0, 0, 2],  # 3
        [0, 0, 0, 0, 0, 1],  # 4
        [0, 6, 0, 0, 0, 0]  # 5
    ]

    graph = Graph(matrix)

    graph.df_print(0)           # 0 2 1 3 5 4
    graph.bf_print(0)           # 0 2 4 1 3 5
    print(graph.weight(0, 2))   # 7
    print(graph.weight(3, 4))   # -1
