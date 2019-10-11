sample = [10, 2, 20, 60, 3, 50, 2]
a = sample.index(sample.min)
b = sample.rindex(sample.min)
sample[a+1...b].size
