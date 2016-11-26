puts "Укажите год"
year=gets.to_i
if year < 0
  abort("wrong year")
end

days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
if (year%400 == 0 || year%4 == 0) && year%100 != 0
  days_in_month[1] = 29
end

puts "Укажите месяц"
month=gets.to_i
if month < 1
  abort("wrong month")
end

puts "Укажите день"
day=gets.to_i
if day < 1
  abort("wrong day")
elsif day > days_in_month[month-1]
  abort("wrong day")
else
  day_num = 0
  for cur_month in (0..month-2)
    day_num += days_in_month[cur_month]
  end
  day_num += day
  puts "#{day_num}: #{days_in_month}"
end