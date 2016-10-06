card_number = "4929735477250543"
split_card_number = card_number.split("").map {|num| num.to_i}
new_card_number = split_card_number.map.with_index do |num, index|
  index.even? ? num * 2 : num
end
summed_digits_over_ten = new_card_number.map do |num|
  num > 9 ? num -= 9 : num
end
total = summed_digits_over_ten.reduce(:+) % 10
puts "card is valid" if total == 0
puts "card is invalid" if total != 0
