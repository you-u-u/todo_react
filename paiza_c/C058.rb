n, t, s = gets.split.map(&:to_s)

n = n.to_i
count = 0

while s != t
  s = s[1..n-1] + s[0]
  count += 1

end

puts count