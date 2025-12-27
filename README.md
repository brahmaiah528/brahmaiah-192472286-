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

A_STAR(G, start, goal):
    open_list ← priority queue
    add start to open_list with priority 0

    g_cost[start] ← 0
    parent[start] ← None

    while open_list is not empty:
        current ← node in open_list with lowest f_cost
        if current = goal:
            reconstruct path from parent pointers
            return path

        for each neighbor in G[current]:
            new_g ← g_cost[current] + cost(current, neighbor)
            if neighbor not in g_cost or new_g < g_cost[neighbor]:
                g_cost[neighbor] ← new_g
                f_cost ← new_g + heuristic[neighbor]
                add neighbor to open_list with priority f_cost
                parent[neighbor] ← current
