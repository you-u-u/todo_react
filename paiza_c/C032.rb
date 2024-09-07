n = gets.chomp.to_i
food = 0
book = 0
cloth = 0
other = 0

n.times do
  mer = gets.split.map(&:to_i)
  if mer[0] == 0
    food += mer[1]
  elsif mer[0] == 1
    book += mer[1]
  elsif mer[0] == 2
    cloth += mer[1]
  else
    other += mer[1]
  end
end

points = food/100 * 5 + book/100 *3 + cloth/100 * 2 + other/100

puts points


