sample = [10, 2, 20, 60, 3, 50, 2]
a = sample.index(sample.max)
b = sample.rindex(sample.max)
sample[a+1...b].size
