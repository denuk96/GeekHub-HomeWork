sample = [23, 24, 25, 26]
print sample.find_all { |elem| elem.even? } 
print sample.find_all { |elem| elem.odd? }
