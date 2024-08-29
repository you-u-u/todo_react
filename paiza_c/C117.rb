n, m = gets.split.map(&:to_i)
a, b, c = gets.split.map(&:to_i)
count = 0
n.times do
  uriage = gets.chomp.to_i
  if (uriage * c - a - b * m) < 0
    count += 1
  end
end

puts count
