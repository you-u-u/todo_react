input = gets.chomp
a,b,c=input.split.map(&:to_i)
n=a-b+c

# 7以上7777777以下の7の倍数を全て書き出したとき
# 数字「7」は何回現れるか

count=0
(7..7777777).step(7) do |num|
  count += num.to_s.count("7")
end
puts count
