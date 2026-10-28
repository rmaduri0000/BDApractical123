# DGIM Algorithm

data = "101101001011"

N=8

buckets = []

for i in range(len(data)):
  if data[i] == '1':
    buckets.append((i, 1))

# Keep only buckets inside the last N bits
buckets = [b for b in buckets if b[0] >= len(data) - N]

count = 0

for position, size in buckets:
  count += size

print("Data:", data)
print("Last", N, "bits:", data[-N:])
print("Estimated number of 1s:", count)
