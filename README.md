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


DFS(G, start):
    create empty set VISITED
    call DFS-Recursive(G, start, VISITED)

DFS-Recursive(G, node, VISITED):
    add node to VISITED
    print node
    for each neighbor in G[node]:
        if neighbor not in VISITED:
            DFS-Recursive(G, neighbor, VISITED)

