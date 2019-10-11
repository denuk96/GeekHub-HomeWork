# Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.
sample = [10, 5, 20, 60, 3, 50, 4]
min = sample.rindex(sample.min).to_s 
max = sample.rindex(sample.max).to_s 
o = "min = " + min + '; ' + 'max = ' + max
p o
