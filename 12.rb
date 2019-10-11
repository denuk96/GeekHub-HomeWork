sample = [2, -10, 3, 4, 5, 6,-20]
sample.find_all { |elem| elem < 0}.map{sample.max}
