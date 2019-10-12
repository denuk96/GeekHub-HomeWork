#=>  Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
sample = [23, 24, 25, 26]
print sample.select.with_index  { |elem| elem.odd? }
print sample.select.with_index  { |elem| elem.even? } 

