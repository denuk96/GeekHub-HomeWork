R,macc = 10, [4, 5, 9, 12, 24.5]
macc = macc.sort
b = macc.select{ |i| i<R }
c = macc.select{ |i| i>R }
d = b.min
e = c.max
if (R-d) > (e-R)
   puts e
else
   puts d
end
