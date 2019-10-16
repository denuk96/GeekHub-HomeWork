# Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.


print sample = [1, 2, 5, -2, 5, -12, 11]
sample.map! do |x|
  if x > 0
	[x, 0]
  else
	x
  end
end
puts
print sample.flatten
