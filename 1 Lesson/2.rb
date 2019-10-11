#=>  Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
sample = [23, 24, 25, 26]
print sample.find_all { |elem| elem.odd? }
print sample.find_all { |elem| elem.even? } 

