puts "Как Вас зовут?"
person_name = gets.chomp
puts "Какой Ваш рост?"
person_height = gets.chomp
ideal_weight = person_height.to_i - 110
if ideal_weight <= 0
	person_result = "Ваш вес уже оптимальный"
else
	person_result = "Идеальный вес #{ideal_weight}"
end
puts "#{person_name}, #{person_result}"