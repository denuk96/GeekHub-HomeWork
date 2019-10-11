# Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.
sample = [10, 5, 20, 60, 3, 50, 4]
min = sample.index(sample.min).to_s 
max = sample.index(sample.max).to_s 
o = "min = " + min + '; ' + 'max = ' + max
p o
