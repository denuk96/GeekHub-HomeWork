# Дан целочисленный массив. Найти минимальный четный элемент.
sample = [15, 2, 3, 4, 5]
p sample.select{ |i| i.even? }.min
