# Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false.

p sample = [1, 2, 3, 4, 5, 6]
puts
k = 2
puts "k = #{k}"
sample2 = sample.reject{ |el| el > k }
if sample2 != sample
p false
else
p true
end
