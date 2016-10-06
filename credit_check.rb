card_number = "4929735477250543"
split_card_number = card_number.split("").map {|num| num.to_i}
new_card_number = split_card_number.map.with_index do |num, index|
  index.even? ? num * 2 : num
end
summed_digits_over_ten = new_card_number.map do |num|
  if num > 9
    num = num.to_s.split("")
    num = num[0].to_i + num[1].to_i
  else
    num
  end
end
  total = summed_digits_over_ten.reduce(:+) % 10
  if total == 0
    puts "card is valid"
  else
    puts "card is invalid"
  end
