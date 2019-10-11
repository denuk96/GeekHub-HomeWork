# Дан целочисленный массив. Найти два наименьших элемента.
sample = [10, 2, 20, 60, 3, 50, 2]
sample=sample.uniq
sample=sample.sort
p sample.shift
p sample.shift
