sample = [2, 123, 4, 6, -12, 21]
s = sample.find_all { |elem| elem > 0 }.join("0, ")
