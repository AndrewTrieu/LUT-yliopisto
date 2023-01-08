from sys import maxsize
from graph import Graph


def floyd(graph: Graph):
    distance = graph.matrix
    for x in range(graph.V):
        for y in range(graph.V):
            if x != y and distance[x][y] == 0:
                distance[x][y] = maxsize
    for k in range(graph.V):
        for i in range(graph.V):
            for j in range(graph.V):
                distance[i][j] = min(
                    distance[i][j], distance[i][k] + distance[k][j])
    for x in range(graph.V):
        for y in range(graph.V):
            if x != y and distance[x][y] == maxsize:
                distance[x][y] = 0
    return distance


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
    D = floyd(graph)
    for i in range(6):
        for j in range(6):
            print(f"{D[i][j]:2d}", end=" ")
        print()
    #  0 12  7  8  9  9
    #  0  0  0  0  0  0
    #  7  5  0  1 16  2
    #  6  8 13  0 15  2
    #  0  7  0  0  0  1
    #  0  6  0  0  0  0
