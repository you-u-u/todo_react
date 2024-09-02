m, n = gets.split.map(&:to_i)
triangle = 0

(1..(m-1)).each do |i|
  (1..(n-1)).each do |j|
    a = i*i + j*j
    if Math.sqrt(a) % 1 == 0
    triangle += 1
    end
  end
end

puts triangle