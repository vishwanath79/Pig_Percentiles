@outputSchema("m:float")
# Input value
def percentile(x):
    # Set to unordered collection 
    dataset = set(x)
    # Set as dict
    maps = {}
    pc = float(1)/(len(dataset)-1)
    # Loop through one by one 
    for n, i in enumerate(dataset):
        maps[i] = "%.3f"%(n*pc)
    y = [maps.get(i) for i in x]
    # Sort to align with initial dataset
    return sorted(y)