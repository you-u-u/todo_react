a, b, r = gets.split.map(&:to_i)
n =gets.chomp.to_i

n.times do
  x, y = gets.split.map(&:to_i)
  if (x-a)**2 + (y-b)**2 >= r**2
    puts "silent" 
  else
    puts  "noisy"
  end
end
