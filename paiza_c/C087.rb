n = gets.chomp.to_s


1000.times do 
  num = n.to_i + n.reverse.to_i
  if num == num.to_s.reverse.to_i
    puts num
    break
  else
    n = num
  end
end

#　もしくはこっち↓

num = gets.chomp.to_s


while true
  reverse_num = num.to_s.reverse
  sum = num.to_i + reverse_num.to_i


  if sum == sum.to_s.reverse.to_i
    puts num
    break
  else
    num = sum
  end
end


