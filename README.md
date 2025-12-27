Depth-First Search (DFS) is a graph traversal algorithm that explores as far as possible along each branch before backtracking. It can be implemented recursively or iteratively. This repository contains a simple recursive DFS implementation in Python.

DFS(G, start):
    create empty set VISITED
    call DFS-Recursive(G, start, VISITED)

DFS-Recursive(G, node, VISITED):
    add node to VISITED
    print node
    for each neighbor in G[node]:
        if neighbor not in VISITED:
            DFS-Recursive(G, neighbor, VISITED)


