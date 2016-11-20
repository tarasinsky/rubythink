puts "Укажите коэффициент a"
a = gets.to_f
puts "Укажите коэффициент b"
b = gets.to_f
puts "Укажите коэффициент c"
c = gets.to_f
d = b**2 - 4 * a * c
if d < 0
  puts "Корней нет"
elsif d == 0 
  puts "D = #{d}, X1 = X2 = #{-b / (2 * a)}"
else
  puts "D = #{d}, X1 = #{(-b + Math.sqrt(d))/ (2 * a)}, X2 = #{(-b - Math.sqrt(d))/ (2 * a)}"
end