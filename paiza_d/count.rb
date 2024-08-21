# 1からある数までの数字をカウントアップし、次にその数から1までカウントダウンするプログラムを書いて
n=gets.to_i

for i in 1..n
  puts i
end

for i in (1..n).reverse_each
  puts i 
end

10.step(n,-2) {|n| p n}