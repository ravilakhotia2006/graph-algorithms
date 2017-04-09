
##### Initializing gragh for traversal algorithms
````
v1 = Vertex.new('v1')
v2 = Vertex.new('v2')
v3 = Vertex.new('v3')
v4 = Vertex.new('v4')
v5 = Vertex.new('v5')

e12 = Edge.new(v1, v2)
e13 = Edge.new(v1, v3)
e24 = Edge.new(v2, v4)
e34 = Edge.new(v3, v4)
e45 = Edge.new(v4, v5)

# undirected graph
g = Graph.new

g.add_edges([e12, e13, e24, e34, e45])
````