a, b = gets.split.map(&:to_i)
n = gets.chomp.to_i

n.times do 
  c, d = gets.split.map(&:to_i)
  if a > c
    puts "High"
  elsif a < c
    puts "Low"
  else
    if b < d
      puts "High"
    else
      puts "Low"
    end
  end
end
