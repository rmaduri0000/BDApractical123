# Flajolet-Martin Algorithm — Simplest Python Code

# Flajolet-Martin Algorithm

data = [1, 2, 3, 4, 5, 1, 2, 3]

max_zeroes = 0

for x in data:
  # Simple hash value
  h=x*5

  # Convert to binary
  binary = bin(h)[2:]

  # Count trailing zeros
  zeroes = len(binary) - len(binary.rstrip('0'))

  if zeroes > max_zeroes:
     max_zeroes = zeroes

# Estimate distinct elements
estimate = 2 ** max_zeroes

print("Data:", data)
print("Maximum trailing zeros:", max_zeroes)
print("Estimated distinct elements:", estimate)
