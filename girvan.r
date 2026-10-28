# Girvan-Newman Algorithm

# Girvan-Newman Algorithm

# Install package (run only once)
# install.packages("igraph")

# Load package
library(igraph)

# Create a hardcoded graph
edges <- c(
    "A", "B",
    "A", "C",
    "B", "C",
    "D", "E",
    "D", "F",
    "E", "F",
    "C", "D"
)

g <- graph(edges, directed = FALSE)

# Apply Girvan-Newman algorithm
result <- cluster_edge_betweenness(g)

# Print communities
print(result)

# Print membership of each node
print(membership(result))

# Plot graph
plot(result,main = "Girvan-Newman Community Detection")