#=>  Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
sample = [23, 24, 25, 26]
print sample.select.with_index { |elem| elem.even? } 
print sample.select.with_index { |elem| elem.odd? }
