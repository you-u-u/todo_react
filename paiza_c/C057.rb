t,x,y = gets.split.map(&:to_i)
p x
x = [x]
y = [y]
p "asdf #{x}"

t.times do |i|
  a, b = gets.split.map(&:to_i)
  break if y[i] <= 0
  x << x[i].to_i + a
  y << y[i].to_i + b
  p x

end

puts x.max
