A Search Algorithm*

Algorithm A_Star(Graph, Start, Goal)

1. Create an OPEN list.
2. Create a CLOSED list.
3. Add the Start node to the OPEN list.
4. Set:
      g(Start) = 0
      h(Start) = Heuristic value
      f(Start) = g(Start) + h(Start)

5. While OPEN is not empty
      a. Select the node with the lowest f(n) from OPEN.
      b. Remove it from OPEN.
      c. Add it to CLOSED.

      d. If the selected node is the Goal
            Print the shortest path.
            Stop.

      e. Generate all neighboring nodes.

      f. For each neighbor
            If neighbor is in CLOSED
                  Ignore it.

            Else
                  Compute:
                  g(neighbor) = g(current) + cost
                  h(neighbor) = heuristic(neighbor)
                  f(neighbor) = g(neighbor) + h(neighbor)

                  If neighbor is not in OPEN
                        Add neighbor to OPEN.
                  Else if the new g(neighbor) is smaller
                        Update the parent of neighbor.
                        Update g(neighbor) and f(neighbor).

6. Print "Goal not found."
7. Stop.
