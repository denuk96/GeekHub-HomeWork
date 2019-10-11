# Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.
sample = [10, 2, 20, 60, 3, 50, 2]
even = sample.find_all { |elem| elem.even? }.to_s
odd = sample.find_all { |elem| elem.odd? }.to_s

o = 'odd:'+ odd + ' :'  + 'even: ' + even
