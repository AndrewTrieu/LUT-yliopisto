from graph import Graph


def kruskal(graph: Graph):
    matrix = graph.matrix
    V = graph.V
    edges = []
    for i in range(V):
        for j in range(V):
            if matrix[i][j] > 0:
                edges.append((i, j, matrix[i][j]))
    edges.sort(key=lambda item: item[2])
    subsets = []
    for i in range(V):
        subsets.append([i])
    result = []
    for edge in edges:
        subset1 = None
        subset2 = None
        for subset in subsets:
            if edge[0] in subset:
                subset1 = subset
            if edge[1] in subset:
                subset2 = subset
        if subset1 != subset2:
            result.append(edge)
            subsets.remove(subset1)
            subsets.remove(subset2)
            subsets.append(subset1 + subset2)
    new_matrix = [[0] * V for _ in range(V)]
    for edge in result:
        new_matrix[edge[0]][edge[1]] = edge[2]
        new_matrix[edge[1]][edge[0]] = edge[2]
    return Graph(new_matrix)


if __name__ == "__main__":
    matrix = [
        #    0  1  2  3  4  5
        [0, 0, 7, 6, 9, 0],  # 0
        [0, 0, 5, 0, 0, 6],  # 1
        [7, 5, 0, 1, 0, 2],  # 2
        [6, 0, 1, 0, 0, 2],  # 3
        [9, 0, 0, 0, 0, 1],  # 4
        [0, 6, 2, 2, 1, 0]  # 5
    ]
    graph = Graph(matrix)
    graph.bf_print(0)   # 0 2 3 4 1 5
    mst = kruskal(graph)
    mst.bf_print(0)     # 0 3 2 1 5 4
