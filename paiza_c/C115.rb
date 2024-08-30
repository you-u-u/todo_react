a, b = gets.split.map(&:to_i)
trafic = []
(a-1).times do |i|
  dis = gets.chomp.to_i
  if dis <= b
    trafic << dis

  end
end
puts trafic.sum