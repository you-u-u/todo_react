n = gets.to_i
sosu = []

(1..n).each do |i|
  next if i == 1

  if i == 2
    sosu.push(i)
    next
  end
  is_prime = true

  sosu.each do |num|
    if i % num == 0
      is_prime = false
      break
    end
  end

  sosu.push(i) if is_prime
end
puts sosu.size

