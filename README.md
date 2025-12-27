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

Breadth-First Search (BFS) is a graph traversal algorithm that explores all neighbors of a node before moving to the next level. This repository contains a Python BFS implementation using a queue.

BFS(G, start):
    create empty set VISITED
    create empty queue Q

    add start to VISITED
    enqueue start into Q

    while Q is not empty do:
        node ← dequeue from Q
        print node
        for each neighbor in G[node] do:
            if neighbor not in VISITED then
                add neighbor to VISITED
                enqueue neighbor into Q





