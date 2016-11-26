cart = Hash.new

puts "Введите товар"
tovar = gets.chomp

while tovar != "стоп"
  quantity = 0.0
  price = 0.0

  until quantity > 0
    puts "Введите кол-во"
    quantity = gets.to_f
  end
  until price > 0
    puts "Введите цену"
    price = gets.to_f
  end

  if cart.include?(tovar)
    cart[tovar]["quantity"] += quantity
    cart[tovar]["price"]    = price
  else
    cart[tovar] = {"quantity" => quantity, "price" => price}
  end
  puts cart 

  puts "Введите товар"
  tovar = gets.chomp

end

total = 0.0
cart.each do |product, pos|
  quantity = pos['quantity']
  price = pos['price']
  sum = quantity * price
  total += sum
  puts "#{product}: #{quantity} * #{price} = #{sum}"
end  
puts "Сумма покупки #{total}"