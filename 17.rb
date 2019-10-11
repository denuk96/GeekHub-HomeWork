sample = [23, 105, 21,1,2,2,55,111]
p( (1..sample.size-2).to_a.select{ |i| (sample[i] > sample[i-1])&&(sample[i] > sample[i+1]) }.size )
