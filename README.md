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

MINIMAX(depth, nodeIndex, isMax, scores, height):
    if depth == height:
        return scores[nodeIndex]

    if isMax:
        best = -∞
        for each child of nodeIndex:
            val = MINIMAX(depth + 1, childIndex, False, scores, height)
            best = max(best, val)
        return best
    else:
        best = +∞
        for each child of nodeIndex:
            val = MINIMAX(depth + 1, childIndex, True, scores, height)
            best = min(best, val)
        return best

UCS(G, start, goal):
    create priority queue PQ
    enqueue (0, start) into PQ
    create empty set VISITED

    while PQ is not empty:
        (cost, node) ← dequeue from PQ

        if node == goal:
            print node and cost
            return

        if node in VISITED:
            continue

        add node to VISITED

        for each neighbor, weight in G[node]:
            if neighbor not in VISITED:
                enqueue (cost + weight, neighbor) into PQ

    print "Goal not reachable"

WATER_JUG(jug1, jug2, goal):
    create empty set VISITED
    create empty queue Q
    enqueue (0, 0) into Q
    add (0, 0) to VISITED

    while Q is not empty:
        (x, y) ← dequeue from Q
        if x == goal or y == goal:
            print goal state
            return

        generate all possible states:
            fill jug1: (jug1, y)
            fill jug2: (x, jug2)
            empty jug1: (0, y)
            empty jug2: (x, 0)
            pour jug1 → jug2: (x - min(x, jug2 - y), y + min(x, jug2 - y))
            pour jug2 → jug1: (x + min(y, jug1 - x), y - min(y, jug1 - x))

        for each new state:
            if state not in VISITED:
                add state to VISITED
                enqueue state into Q

ALPHA_BETA(depth, node, isMax, values, alpha, beta):
    if depth == 0:
        return values[node]

    if isMax:
        best = -∞
        for each child i of node:
            val = ALPHA_BETA(depth-1, child_i, False, values, alpha, beta)
            best = max(best, val)
            alpha = max(alpha, best)
            if beta <= alpha:
                break   // prune remaining branches
        return best
    else:
        best = +∞
        for each child i of node:
            val = ALPHA_BETA(depth-1, child_i, True, values, alpha, beta)
            best = min(best, val)
            beta = min(beta, best)
            if beta <= alpha:
                break   // prune remaining branches
        return best

GREEDY_BFS(G, heuristic, start, goal):
    create priority queue PQ
    enqueue (heuristic[start], start) into PQ
    create empty set VISITED

    while PQ is not empty:
        node ← dequeue node with smallest heuristic value
        if node == goal:
            print node
            return

        if node in VISITED:
            continue

        add node to VISITED

        for each neighbor of node:
            if neighbor not in VISITED:
                enqueue (heuristic[neighbor], neighbor) into PQ

    print "Goal not reachable"

LETTERS ← ['S', 'E', 'N', 'D', 'M', 'O', 'R', 'Y']

for each permutation of digits 0-9 for LETTERS:
    assign digits to letters
    if S == 0 or M == 0:
        skip (leading digit cannot be 0)
    compute SEND = S*1000 + E*100 + N*10 + D
    compute MORE = M*1000 + O*100 + R*10 + E
    compute MONEY = M*10000 + O*1000 + N*100 + E*10 + Y
    if SEND + MORE == MONEY:
        print solution
        break

DECISION_TREE(outlook, humidity):
    if outlook == "Sunny":
        if humidity == "High":
            return "No"
        else:
            return "Yes"
    elif outlook == "Overcast":
        return "Yes"
    elif outlook == "Rain":
        return "Yes"

Initialize random weights and biases for hidden layer (wh, bh) and output layer (wout, bout)
Set learning rate lr

for number of iterations:
    for each input X[i] with target y[i]:
        # Forward pass
        h = sigmoid(X[i]*wh + bh)   # hidden layer activations
        o = sigmoid(h*wout + bout)  # output layer activation

        # Compute error
        e = y[i] - o

        # Backpropagation
        do = e * dsig(o)             # output delta
        dh = [do*wout[0]*dsig(h[0]), do*wout[1]*dsig(h[1])]  # hidden layer delta

        # Update weights and biases
        wout += lr * h * do
        bout += lr * do
        wh += lr * X[i] * dh
        bh += lr * dh

Initialize board b as list of 9 empty spaces

FUNCTION show():
    print current board state

FUNCTION win(player):
    return True if player has any winning combination:
        - rows
        - columns
        - diagonals

FOR i in range(9):
    show()
    player = 'X' if i is even else 'O'
    pos = input position (0-8)
    b[pos] = player
    if win(player):
        show()
        print player wins
        exit loop
ELSE:
    show()
    print "Draw!"

Initialize random weights and biases for hidden layer (wh, bh) and output layer (wout, bout)
Set learning rate lr

for number of iterations:
    for each input X[i] with target y[i]:
        # Forward pass
        h = sigmoid(X[i]*wh + bh)   # hidden layer activations
        o = sigmoid(h*wout + bout)  # output layer activation

        # Compute error
        e = y[i] - o

        # Backpropagation
        do = e * dsig(o)             # output delta
        dh = do*wout*dsig(h)         # hidden layer delta

        # Update weights and biases
        wout += lr * h * do
        bout += lr * do
        wh += lr * X[i] * dh
        bh += lr * dh


