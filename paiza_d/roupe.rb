num = gets.split.map(&:to_i)
arr = []

num.each do |n|
  if n.even?
    arr << n
  end
end

if arr.empty?
  puts "偶数が見つかりませんでした"
else
  puts arr.max
end
