sample = [22, 23, 24, 25]
sample.index(sample.select { |num| sample[0] < num && num < sample[-1] }.last) || []
