# Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.

R,macc = 20.0, [3.1, 7.2, 10.3, 15.5, 18, 24.5]
macc = macc.sort
b = macc.select{ |i| i<R }
c = macc.select{ |i| i>R }
d = b.max
e = c.min
if (R-d) > (e-R)
  puts e 
else
  puts d 
end
