puts "Укажите сторону треугольника a"
a = gets.to_f
puts "Укажите сторону треугольника b"
b = gets.to_f
puts "Укажите сторону треугольника c"
c = gets.to_f
arr = [a,b,c].sort
if arr[2]**2 == arr[0]**2 + arr[1]**2
  puts "Треугольник прямоугольный"
end
if a == b && a == c 
  puts "Треугольник равносторонний"
elsif a == b || a == c || b == c
  puts "Треугольник равнобедренный"
end