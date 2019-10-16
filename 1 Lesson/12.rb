# Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.
sample = [2, -10, 3, 4, 5, 100,-20]
sample1 = sample.find_all { |elem| elem < 0}.map{sample.max}
sample2 = sample.find_all { |elem| elem > 0}
sample3 = sample1 + sample2 
